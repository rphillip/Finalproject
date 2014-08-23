#!/usr/bin/perl -w

use strict;
use CGI;
use Config::IniFiles;
use DBI;
use JSON;
use IO;

## create our CGI and TMPL objects
my $cgi  = new CGI;

##tie hashes to ini file
my %ini;
tie %ini, 'Config::IniFiles', ( -file => "login.ini" );

## add JSON
my $json = JSON->new->allow_nonref;

##Connect to database by using login.ini
my $dsn = "DBI:mysql:database=$ini{Login}{Database};host=$ini{Login}{Host}";
my $dbh = DBI->connect($dsn, $ini{Login}{User}, $ini{Login}{Password}, { RaiseError => 1, PrintError => 1 });

## set terms for sql search - pass in form data
my $name = undef;
my $seq = undef;
my $gterm =undef;

$name = $cgi->param('seqname');
$seq = $cgi->param('sequence');
$gterm = $cgi->param('geneterm');

##delete old files


## initialize an empty arrayref to store the search matches
my $matches = [];

my $qry = qq{
    SELECT d.gene, d.species, d.sequence
    FROM data d
    WHERE d.gene = ?
};

my $dsh = $dbh->prepare($qry);

$dsh->execute($gterm);

while (my $row = $dsh->fetchrow_hashref) {
    ## push the row to the match array
    push @$matches, $row;
}

open(my $out, ">", 'inmuscle.in') or die "Unable to open file for output: $!\n";

##output muscle input
foreach my $part (@{$matches}) {
        print $out "$part->{sequence}\n";
}

##if input sequence submitted add to alignment input
if (defined $seq){
	print $out "$seq\n";
}

close $out;

##call clustalo

my $clustalo = system(`/var/www/html/rsulapa1/compare/clustalo -i inmuscle.in -o outs.o --percent-id --distmat-out=stable.pim --force --full`);
##put in input order
#my $stable = system(`python stable.py inmuscle.in outmuscle.out > stable.fasta`);
##call clustal to make percentage matrix
#my $clustal = system(`/var/www/html/rsulapa1/compare/muscle -infile=stable.fasta -tree -pim`);

## get PIM values
my @line = ();
open(INFILE, "<","stable.pim") or die "Unable to open file for output: $!\n";
my $skip=0;
while(<INFILE>)
 {
  chomp($_);
  if( $skip == 1){
	  @line = split (/\s+/);
	 last;
	}
	$skip++;
}
close (INFILE);

my $count = 1;
my $num_3dec;
## add percent identity to JSON output
foreach my $lt (@{$matches}){
	$num_3dec = sprintf '%.2f', $line[$count];
	$lt->{'score'} = $num_3dec;	
	$count++;
}

## if input sequence submitted add to matches
my $input ={};
if (defined $seq ){
	$num_3dec = sprintf '%.2f', $line[$count];
	$input->{'score'}= $num_3dec;
	$input->{'species'}= $name;
	$input->{'gene'}= $gterm;
	$input->{'sequence'}= $seq;
	push @$matches, $input;
}

$dsh->finish;
$dbh->disconnect;

## print the header and JSON data

print $cgi->header('application/json');
$json = encode_json $matches;
print $json;
