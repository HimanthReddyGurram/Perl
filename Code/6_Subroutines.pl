#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/signatures/; # this line should be there for every example if we want to use signatures

# Subroutines (functions)
# Please comment blocks of code to view output as per your convinience

# basic sub-routine
sub test{
    print Dumper("hi");
};
test();

# passing variables
# all passed items are going to be store in "@_" array
sub test{
    my @a=@_;
    my $b=$a[0];
    # my $b=shift @_;  # we could just use this in place of above two lines
    print Dumper("hi, $b");
};
test("himanth");

# examples
my @array=qw/a b c/;
sub test1{
    my $a=shift @_;
    push $a->@*, 'd e';
};
test1(\@array);
print Dumper(\@array);

# calling sub-routine from another subroutine

sub test2{
print "test2";
};
sub test3{
print "test3";
test2();
};
test3();

# about returning

# this will return c because we are not mentioning return and it will return the last variable
sub test4{
my $a=1;
my $b=2;
my $c=$a+$b;
# return 5; # if we un-comment this line it will return 5
};
print Dumper(test4());

# using features/signatures

# named arguments
sub test6(%inputs){
    print Dumper \%inputs;
};
test6(
    1=>"one",
    2=>"two"
);

# normal examples
sub test5($name,$age=22){
    print "hi, $name and Im $age years old";
};
test5("Joy",23);
test5("Joy");

sub test7($a,@b){
    print Dumper $a;
    print Dumper \@b;
};
test7("a","hi","bye",[1,2,4],"done;")























