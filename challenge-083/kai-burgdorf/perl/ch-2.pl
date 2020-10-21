#!/usr/bin/perl

use warnings;
use strict;

use Data::Dumper;

use List::Util qw(first any);
use List::MoreUtils qw (true);

my @A = ( 3, 10, 8 );

#my @A = (12, 2, 10);
#my @A = ( 2, 3, 5, 6);

my $sum = 0;

for my $elem (@A) {
    $sum += $elem;
}

my $half = ( $sum % 2 == 0 ) ? $sum / 2 : ( $sum - 1 ) / 2;

my @candidates = sort { $b <=> $a } grep { $_ <= $half } @A;

my $count = 0;
for my $elem (@candidates) {
    if ( $elem == $half || $elem < $half ) {
        $count++;
        $half -= $elem;
    }
}

print "Input: \@A = (" . join( ", ", @A ) . ")\nOutput: $count\n";
