#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

# Loops
# Please comment blocks of code to view output as per your convinience

# while loop
my $a=0;
while($a<10){
    say "$a";
    $a++;
}
# for loop
for (my $a=90;$a<=100;$a++){
    say "$a";
}
# for each
my @b=(20..30);
my @c=("hi","bye");
foreach my $a (@b){
    $a+=5;    # this will change the ORIGINAL VALUES OF LOOP unlike any other loops
    say $a;
    next if $a == 30;   # we also have "last if" which stops the iteration there, "redo" to run that loop twice there
    foreach my $a (@c){
        say "\t $a";
    }
}
print Dumper(\@b);
# goto and last (loops)
my @b=(20..30);
my @c=("hi","bye");
LOOP1:
foreach my $a (@b){
    goto LOOP2 if $a==25;
    say $a;
    LOOP2:
    foreach my $b (@c){
        last LOOP1 if $a==28;
        say "\t $b";
    }
}
print Dumper(\@b);

























