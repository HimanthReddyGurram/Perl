#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# error-handling
# Please comment blocks of code to view output as per your convinience

my $test="hi";

# un comment this block when you comment the below block to see the output
# die "stopped";
# print $test;

eval{
    die "stopped";  # if we comment this line then the output will be "bye :"
    $test="bye";
};

warn "not right-warnings";

print "$test : $@";