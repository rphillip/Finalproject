#!/usr/bin/perl -w

use strict;
use CGI;
use HTML::Template;
use Config::IniFiles;
use DBI;
use JSON;


## create our CGI and TMPL objects
my $cgi  = new CGI;
my $tmpl = HTML::Template->new(filename => 'tmpl/search_product.tmpl');

##tie hashes to ini file
my %ini;
tie %ini, 'Config::IniFiles', ( -file => "login.ini" );

## add JSON
my $json = JSON->new->allow_nonref;

## search term
my $term = $cgi->param('term');
$term = '%'.$term.'%';

##Connect to database by using login.ini
my $dsn = "DBI:mysql:database=$ini{Login}{Database};host=$ini{Login}{Host}";
my $dbh = DBI->connect($dsn, $ini{Login}{User}, $ini{Login}{Password}, { RaiseError => 1, PrintError => 1 });

## initialize an empty arrayref to store the search matches
my $matches = [];

## retrieve query for gene names and product
my $qry = qq{
 SELECT fproduct.value As id, fproduct.value As label, fproduct.value As value
 FROM feature f
 JOIN cvterm polypeptide ON f.type_id=polypeptide.cvterm_id
 JOIN featureprop fproduct ON f.feature_id=fproduct.feature_id
 JOIN cvterm productprop ON fproduct.type_id=productprop.cvterm_id
 WHERE polypeptide.name = ?
 AND productprop.name = ?
 AND fproduct.value LIKE ?
 LIMIT 5
};
my $polyp = 'polypeptide';
my $product = 'gene_product_name';
my $dsh = $dbh->prepare($qry);
$dsh->execute($polyp,$product,$term);

## push table into
while (my $row = $dsh->fetchrow_hashref){
 push @$matches, $row; 
}

$dsh->finish;
$dbh->disconnect;

## push data to the template
$tmpl->param( MATCHES => $matches );
$tmpl->param( MATCH_COUNT => scalar( @$matches ) );

## print the header and template
print $cgi->header('application/json');
$json = encode_json $matches;
print $json;
