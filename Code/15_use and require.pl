#!/usr/bin/env perl

use strict;
use warnings;

# Differences between use and require
# Please un-comment and comment sub-sequent blocks of code to view output as per your convinience

# USE

# This code will not generate an error
use Data::Dumper;
print Dumper('hi'); # while using "use" all modules are extracted automatically.

# # This code requires the dumper module to be specified explicitly.
# use Data::Dumper qw//;
# # use Data::Dumper qw/ Dumper /; #This would work
# print Dumper('hi');



# REQUIRE

# # This requires the dumper module to be specified immediately
# # require Data::Dumper; # this line works too
# require 'Data/Dumper.pm';
# # print Dumper('hi'); # so this will give an error.
# print Data::Dumper::Dumper('hi'); # this would work as it extracts the dumper module
# # while using "require" all no module is extracted automatically and each have to be extracted seperately.


