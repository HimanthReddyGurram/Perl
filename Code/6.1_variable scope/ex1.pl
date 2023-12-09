#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/state/;

# scope of variables
# Please comment blocks of code to view output as per your convinience

require "./ex2.pl";
# our ($a); # this line is not needed in newer versions
print $a; # this variable is from ".ex2.pl" file

# example 1
sub test{
    my $a=1;
    $a+=1;
    print "....." . $a . "\n";
}
# here the value of a is re-assigned each time when the sub-routine is runned
test();
test();
test();
test();
test();
test();

sub test2{
    state $a=1;
    $a+=1;
    print "....." . $a . "\n";
}
# here the value of a is not re-assigned each time when the sub-routine is runned and state is preserved.
test2();
test2();
test2();
test2();
test2();
test2();

# example 2
sub test3{
    state %map=(
        a=>1,
        b=>2,
        c=>3
    );
    print $map{$_[0]};   # "$_" is to access a single passed variable from "@_"
}
test3("a","b");  # the above expression only takes the first value we passed and give output from already defined map
