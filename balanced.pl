use strict;
use warnings;
use Data::Dumper qw(Dumper);

$_ = shift;

while (1){
	if (s/(\{\}|\[\]|\(\))//xs){
		if ($_ eq ''){
			print "Balanced!\n";
			last;
		}
	} else {
		print "Unbalanced\n";
		last;
	}
}