#!/usr/bin/perl -w

use strict;
use CGI;
use Config::IniFiles;
use DBI;
use JSON;

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

## initialize an empty arrayref to store the search matches
my $matches = [];

my $qry = qq{
    SELECT DISTINCT d.gene
    FROM data d
};

my $dsh = $dbh->prepare($qry);

$dsh->execute();

while (my $row = $dsh->fetchrow_hashref) {
    ## push the row to the match array
    push @$matches, $row;
}

$dsh->finish;
$dbh->disconnect;
## print the header and JSON data

print $cgi->header('application/json');
$json = encode_json $matches;
print $json;
