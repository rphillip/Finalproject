#!/usr/bin/perl -w

use strict;
use CGI;
use Config::IniFiles;
use DBI;
use JSON;
use IO::File;

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

$dsh->finish;
$dbh->disconnect;

open(my $out, ">", 'inmuscle.in');

##output muscle input
foreach my $part (@{$matches}) {
        print $out "$part->{sequence}\n";
}

##if input sequence submitted add to alignment input
if (defined $seq != undef){
	print $out "$seq\n";
}

close $out;



##call muscle 
my $muscle = `muscle -in inmuscle.in -out outmuscle.out`;
##put in input order
my $stable = `python stable.py inmuscle.in outmuscle.out > stable.fasta`;
##call clustal to make percentage matrix
my $clustal = `clustalw2 -infile=stable.fasta -tree -pim`;

## get PIM values
my @line = ();
open(INFILE, "<","stable.pim");
while(<INFILE>)
 {
  chomp($_);
  if($_ =~ m/1:/){
	  @line = split (/\s+/);
	 last;
	}
}
close (INFILE);

my $count = 3;
## add percent identity to JSON output
foreach my $lt (@{$matches}){
	$lt->{'score'} = $line[$count];	
	$count++;
}

## if input sequence submitted add to matches
my $input ={};
if (defined $seq ){
	$input->{'score'}= $line[$count];
	$input->{'species'}= $name;
	$input->{'gene'}= $gterm;
	$input->{'sequence'}= $seq;
	print $out "$seq\n";
	push @$matches, $input;
}



## print the header and JSON data

print $cgi->header('application/json');
$json = encode_json $matches;
print $json;
