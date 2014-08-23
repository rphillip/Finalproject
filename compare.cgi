#!/usr/bin/perl -w

use strict;
use CGI;
use Config::IniFiles;
use DBI;
use JSON;
use IO::File;

## create our CGI and TMPL objects
my $cgi  = new CGI;

my $cfg = Config::IniFiles->new( -file => "settings.ini" ) || die "failed to read INI f$"

my $dsn = "DBI:mysql:database=" . $cfg->val('database', 'name') .
                       ";host=" . $cfg->val('database', 'server') . ";";

my $dbh = DBI->connect($dsn, $cfg->val('database', 'user'), $cfg->val('database', 'pass$'
                       {RaiseError => 1, PrintError => 0});

my $json = JSON->new->allow_nonref;

my $gterm = $cgi->param('gene_term');

my $sterm1 = $cgi->param('species_term1');

my $sterm2 = $cgi->param('species_term2');

my $iterm = $cgi->param('iterm');

## initialize an empty arrayref to store the search matches
my $matches = [];

my $qry = qq{
    SELECT d.gene, d.species, d.sequence
    FROM data d
    WHERE productprop.name = ?
    AND product.value like ?
};

my $dsh = $dbh->prepare($qry);

$dsh->execute("$gterm","$sterm1", "$sterm2");

while (my $row = $dsh->fetchrow_hashref) {
    ## push the row to the match array
    push @$matches, $row;
}

$dsh->finish;
$dbh->disconnect;

open(OUTFILE, ">inmuscle.in");

##output muscle input
foreach my $part (@matches) {
        print OUTFILE "$part{sequence}\n";
}
 print OUTFILE "$iterm\n";

close(OUTFILE);



##call muscle 

my $muscle = `muscle -in inmuscle.in -out outmuscle.out`


##open muscle output

open(INPUTFILE, "<outmuscle.out");
while(<MYINPUTFILE>)
 {
 # Good practice to store $_ value because
 # subsequent operations may change it.
 my($line) = $_;

 # Good practice to always strip the trailing
 # newline from the line.
 chomp($line);

 # Convert the line to upper case.
 $line =~ tr/[a-z]/[A-Z]/;

 # Print the line to the screen and add a newline
 print "$line\n";
 }


## print the header and JSON data
print $cgi->header('application/json');

print $json->encode(
    { match_count => scalar( @$matches ), matches => $matches }
);
