#!/usr/bin/perl  use strict; 

# counting variables
$maxprot = 0;
$totprot = 0;
$genecount = 0;
$hypgenecount = 0;
$isprot = 0;
$protlength = 0;

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

		#counts protein lengths
		#and find min & max & total
		if ($isprot == 1){
			$totprot += $protlength;
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
		$protlength = 0;
		$isprot = 0;
		}		
	}
	#finds the length of the protein
	else {
		$isprot = 1;
		$protlength += length($_);
	}
}

#adds for the final protein in file
$totprot += $protlength;
if ($maxprot < $protlength) {
	$maxprot = $protlength;
}
if($minprot > $protlength) {
	$minprot = $protlength;
}
#averages protein length
my $aveprot = $totprot/$genecount;
#prints output
print "Gene count = $genecount\n";
print "Min protein length = $minprot\n";
print "Max protein length = $maxprot\n";
print "Average protein length = $aveprot\n";
print "Hypothetical gene count = $hypgenecount\n";

close INFILE;
