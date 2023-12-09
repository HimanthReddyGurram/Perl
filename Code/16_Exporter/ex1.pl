#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

# error-handling
# Please comment blocks of code to view output as per your convinience

# use "perl -I ./ ex1.pl" to run this file

use ex2;
# use ex2 qw/ add_nums add_two_nums/; # if we are using EXPORT_OK in .pm file

say Ourmodule::add_nums(5,6);
# say Ourmodule::add_two_nums(5,6); # this will not work because $class will be given the first attribute value "5" so $b will not get any input.
say Ourmodule->add_two_nums(5,6);  # this method tells the class to take 5 and 6 as inputs for $a and $b respectively.






