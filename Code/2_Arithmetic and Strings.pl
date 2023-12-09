#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# Arithmetic Operations
# these are scalar variables(which store single unit of data)

my $a=1; 
my $b=2;
print $a+$b;

# more operations
# replace each of the following code with code in line number 10 and run to see the outputs

# print $a-$b;
# print $a*$b;
# print $a/$b;
# print $a**$b;


# STRINGS

my $a1="test";
my $b1=2;
# concating two values
print $a1 . $b1;

# \n creates new line
my $c="test \n"; 
print $c;

# \t creates tab spaces
my $d="test \thi";
print $d;

# another way of concating
my $e="2 $a"; 
print $e;