#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# Arrays
# Please comment blocks of code to view output as per your convinience

# Creating a new array
my @test=(
    1,
    "ji",
    "bye"
);
print Dumper(@test);

# more ways of creating an array

# if we only use strings and one-word keywords(without space)
my @test1= qw/one two three/; 
print Dumper(@test1);

# prints values till then
my @test2=(1...5); 
print Dumper(@test2);
my @test3=('A'...'J');
print Dumper(@test3);

# prints values from 2 till 4
print Dumper(@test3[2..4]); 

# re-assigning
$test[2]="no";
$test[5]="hi";
print Dumper(@test);

# Index methods

# prints last value
print Dumper($test[-1]); 

# by assigning list to a scalar we assign it the list size
my $a=@test; 
print Dumper($a);
# by assigning this we get the last index of the list
my $b=$#test; 
print Dumper($b);

# List Operations

#adds item to the end
push @test,33; 
print Dumper(@test);
#removes last item
pop @test; 
print Dumper(@test);
#removes first item
shift @test; 
print Dumper(@test);
#adds item to the start
unshift @test,33; 
print Dumper(@test);

# for sorting for CHARACTERS only
my @test6=qw/h x e w a y i t/;
@test6=sort @test6;  
print Dumper(@test6);
# for sorting for NUMBERS only
my @test7=(4,2,335,22,3244,21,6);
@test7=sort {$a <=> $b} @test7; 
print Dumper(@test7); 
     # for reverse printing
@test7=sort {$b <=> $a} @test7; 
print Dumper(@test7);