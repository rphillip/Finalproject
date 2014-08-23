#!/usr/bin/perl  use strict; 

#checks if protein is und
my $found = 0;

#User inputs Acces Number
print "Enter Accession Number: ";
my $number = <STDIN>;
chomp($number);

#open file
open(INFILE,"e_coli_k12_dh10b.faa") || die "file not found";
readline(INFILE); #skip first line

#read file one at a time
while(<INFILE>){
	chomp;
	#check if line has the accession number
	if ($_ =~ m/$number/){
		print "$_";
		$found = 1;
	}
	#once number is found show other lines
	#thn eexit loop
	elsif ($found == 1){
		if($_ =~ m/>/){
			last;
		}
		print "$_\n";
	}
}
#states when not found
if($found == 0){
	print "Not found\n";
}


close INFILE;
