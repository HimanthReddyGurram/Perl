#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

# Logical Operators
# Please comment blocks of code to view output as per your convinience

# terinary operators
say "" ? 'yes' : 'no';  # say prints new line and is useful for debugging
print 1 ? 'yes' : 'no';
print undef ? 'yes' : 'no';
say 1==0 ? 'yes' : 'no';

# for "<=>" we get 1 if the value of left>right, 0 when both are equal and -1 when value of right>left
say 10<=>10; 

# we have "eq"-> equal to, "ne"-> not equal to, "lt" -> less than, "gt"-> greater than, "le"-> less than or equal, "ge"-> greater than or equal
say "a" eq "b" ? 'yes' : 'no'; 

# we have "&&"-> and operator, "||"-> or operator 
say 1>0 && 2>1 ? 'yes' : 'no'; 
say 1>0 && (0>1 || 2>1) ? 'yes' : 'no';  # we can put one in another

# "+=" for adding to the same number, "-=" for subtracting to the same number, "*=" for multiplying to the same number, "/=" for dividing to the same number
my $a=30;
$a+=10;
say $a;
# we can use this even for string appending ".="
my $b="hi";
$b.=" bye";
say $b;
# by using "x" symbol we can multiply/concate/generate the same string multiple times
my $c="hi" x 6;
say $c;
# "++" "--" operators to increase and decrease by 1
my $d=30;
$d++;
say $d;





