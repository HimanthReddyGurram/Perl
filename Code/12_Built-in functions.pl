#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

# Built-in Functions
# Please comment blocks of code to view output as per your convinience

# Map
my @list= qw/cat dog/;
my @a=map{
    uc $_;   # '$_' is the current context variable
}@list;
print Dumper(\@a); # It doesnot modify the original list

# grep
my @list2= qw/mouse cat dog horse/;
my @a1=grep{
    $_ eq 'dog' || $_ eq 'cat' ;
}@list2;
print Dumper(\@a1); # It doesnot modify the original list

# Split
my @aa=split m/e/,"testing the test";
# my @aa=split m//,"testing the test";  # split on every single character
say Dumper \@aa;

# Join
my @bb=join "_",qw/a b c d e f/;
say Dumper \@bb;

# similiarly we can use "uc" "lc" "ucfirst" "lcfirst" "length" and other commands
my @cc=length "hi";
say @cc;
my $d= rand(10);
# my $d= int(rand(10));  # int is used to convert a number into an integer.
say $d;

# substr
my $r=substr("dog",1,2);
say $r;

# Time
say(time);

# sleep
sleep 2; # this will display the output after two seconds
say "2 seconds";


















