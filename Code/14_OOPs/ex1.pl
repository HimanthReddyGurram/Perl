#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

# we can use the following block of code or use "perl -I ./ ex1.pl" in the command line

# BEGIN{
#     push @INC,"/d/Perl/Code/14_OOPs"; # the second parameter is your full path, get it by typing "pwc" in command line.
# };

use Data::Dumper;
use ex2;

# OOPs
# Please comment blocks of code to view output as per your convinience

my $Dog = Dog->new("husky",50,70,"white","binak");
$Dog->set_height_weight(100,150);
say $Dog->height_weight;
say $Dog->{name};






























