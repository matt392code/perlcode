#!c:Perlbinperl.exe -w
use strict;
# This program replaces the dashes in a Social Security number with nothing
# and writes the results to a text file.
# Written by Matt R; released under the GPL
my $test;
# open file with Social Security numbers with dashes
open (FILE, 'socialsecuritynumbers.txt') || die "Cannot open file: $!";
while () {
# read each line of the file into $test
$test = ;
print "n The string is now: $test.n";
# The next 2 lines run the substitution operator 2 times on the string.
# The dash gets replaced by nothing 2 times.
$test =~ s/-//;
$test =~ s/-//;
print "n The string is now: $test.n";
# Open the 2nd output file for *appending* not writing
open (FILE2, ">>socialsnodash.txt") || die "Cannot open file: $!";
# Write the string to the file
print FILE2 $test;
close FILE2
}
print "n"; 
