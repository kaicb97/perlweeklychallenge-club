#!/usr/bin/perl

use strict;
use warnings;

my $S = "The Weekly Challenge";    #Output 6
#my $S = "The purpose of our lives is to be happy"; #Output 23


my @words = split( " ", $S );

print "\nInput: $S\n\nOutput: " . ( length join( "", ( (@words)[ 1 .. ( scalar(@words) - 2 ) ] ) ) ) . "\n\n";

