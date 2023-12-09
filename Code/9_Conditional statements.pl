#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

# Conditional statements
# Please comment blocks of code to view output as per your convinience

my $a=2;
if($a>1){
    say "hello";
    say "bye";
    my $a=1;
    say "hello $a";
}elsif($a==1){
    say "your value is 1";
}else{
    say "this will execute if the above condition does not satisfy";
}

# 'unless' key word can be used in place of 'if'
my $b=1;
# $b=2 if 1<2;
$b=2 unless 1<2;
say $b;









