#!/usr/bin/env perl

use strict;   # to show errors
use warnings;  # to give warnings for errors
use Data::Dumper; # for debugging


# can not re-assign same variable

my $test='random';
my $test='random2';
# this will generate an error when we run the file

# Debugging

my $a = "hello";
my $b=13.51;
# shows values in the debugging console/terminal
print Dumper($a,$b);










