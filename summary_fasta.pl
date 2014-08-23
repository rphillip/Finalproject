#!/usr/bin/perl  use strict;


use feature qw(say);
## create our CGI and TMPL objects


# counting variables
$maxprot = 0;
$totprot = 0;
$genecount = 0;
$hypgenecount = 0;
$isprot = 0;
$protlength = 0;

#array holding all the genes
@genes = ();
#holds acc 
$id;
#holds mol weight
$weight = 0;


%acids = ( 'A' => 71.08,
		'R' => 156.19,
		'N' => 114.10,
		'D' => 115.09,
		'B' => 114.10,
		'C' => 103.14,
		'E' => 129.11,
		'Q' => 128.13,
		'Z' => 129.11,
		'G' => 57.05,
		'H' => 137.14,
		'I' => 113.16,
		'L' => 113.16,
		'K' => 128.17,
		'M' => 131.20,
		'F' => 147.17,
		'P' => 97.12,
		'S' => 87.08,
		'T' => 101.10,
		'U' => 150.04,
		'W' => 186.21,
		'Y' => 163.17,
		'X' => 0.00,
		'V' => 99.13
		);
		
		

#Reads in in file
open(INFILE,"e_coli_k12_dh10b.faa") || die "file not found";
readline(INFILE); #skip first line

#reads in lines from file
while(<INFILE>){
        chomp;
        #if > found it counts
        if ($_ =~ m/>/){
                #counts gene
                $genecount++;
                #counts hypothetical genes
                if ($_ =~ m/hypothetical/){
                        $hypgenecount++;
		}
		
		#finds ID
		@line = split (/\|/);
		$id = $line[3];
                
		#counts protein lengths
                #and find min & max & total
                if ($isprot == 1){
                        $totprot += $protlength;
			
			#create entry to push into array
			push @genes, { acc => $id, length => $protlength, molw => $weight};
			
                        if ($maxprot < $protlength) {
                                $maxprot = $protlength;
                        }
                        if ($first == 0) {
                                $minprot = $protlength;
                                $first = 1;
                        }
                        elsif($minprot > $protlength) {
                                $minprot = $protlength;
                        }
		#reset values
                $protlength = 0;
                $isprot = 0;
		$weight = 0;
                }
        }
        #finds the length of the protein
        else {
		 $isprot = 1;
                $protlength += length($_);
		@line = split (//, $_);
		foreach $char (@line){
			$weight += $acids{$char};
		
		}
        }
}

#adds for the final protein in file
$totprot += $protlength;
#create entry to push into array
%entry = ( acc => $id, length => $protlength, molw => $weight);
push (@genes, \%entry);
			
if ($maxprot < $protlength) {
        $maxprot = $protlength;
}
if($minprot > $protlength) {
        $minprot = $protlength;
}
#averages protein length
my $aveprot = $totprot/$genecount;


close INFILE;

#prints output
print "Gene count = $genecount\n";
print "Min protein length = $minprot\n";
print "Max protein length = $maxprot\n";
print "Average protein length = $aveprot\n";
print "Hypothetical gene count = $hypgenecount\n";


foreach $g (@genes){
	print "$g->{acc}\t$g->{length}\t$g->{molw}\n "; 
}


