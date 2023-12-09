#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# Hash
# Please comment blocks of code to view output as per your convinience

# Creating a new Hash
my %map=(
    a=>20,
    b=>"hi",
    c=>33,
    "2 y"=>"bye"
);
#order is not going to be preserved in a hash
print Dumper(%map); 

# used to assign a new value at a particular position
$map{a}="bye"; 
print Dumper(%map); 

# for specific value pair for respective key
print Dumper($map{c}); 

# prints values of both a and c
print Dumper(@map{"a","c"}); 

# prints only keys of the hash
my @a= keys %map;
print Dumper(@a);

#checks if the key is present or not
my $a= exists $map{c} ? "yes" : "no"  ;
print Dumper($a);

#deletes the c key
my $b= delete $map{c}; 
print Dumper($b); 
print Dumper(%map); 


# this merges map into map2 and overrides the value of c in map 2
my %map2=(
    hel=>1,
    %map,
    c=>0,
); 
print Dumper(%map2); 
