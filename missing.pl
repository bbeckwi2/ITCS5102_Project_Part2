use strict;
use warnings;
use List::Util qw(shuffle);

#Takes in an array in the format # # # or blank to generate an array
my @nums = (0..16); 

print "@nums\n";

my $sum1 = eval join '+', @nums;

@nums = shuffle @nums;
splice @nums, rand(scalar @nums), 1;
print "@nums\n";
print "Missing: ".($sum1 - (eval join '+', @nums))."\n";