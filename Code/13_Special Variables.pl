#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

# Special variables
# Please comment blocks of code to view output as per your convinience

say Dumper \@ARGV;
# In the command line pass "perl ./14_Special Variables.pl 1 2 3 4 5"
# we can see the characters/numbers we are passing into that variable

say Dumper $$; # process id
say Dumper $]; # current version of the PERL
say Dumper \@INC; # files/modules in the current directory
say Dumper \%ENV; # shows environment variables
say __FILE__; # shows file name
say __LINE__; # shows current line



























