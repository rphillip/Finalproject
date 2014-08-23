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

my $gterm = $cgi->param('geneterm');

## initialize an empty arrayref to store the search matches
my $matches = [];

my $qry = qq{
    SELECT d.gene, d.species, d.sequence, d.score
    FROM data d
    WHERE d.gene = ?
};

my $dsh = $dbh->prepare($qry);

$dsh->execute("$gterm");

while (my $row = $dsh->fetchrow_hashref) {
    ## push the row to the match array
    push @$matches, $row;
}

$dsh->finish;
$dbh->disconnect;


## print the header and JSON data
print $cgi->header('application/json');

print $json->encode(
    { match_count => scalar( @$matches ), matches => $matches }
);
