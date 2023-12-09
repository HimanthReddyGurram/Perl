#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# References (reference the adress of the data)
# Please comment blocks of code to view output as per your convinience

my %hash= (a=>1,b=>2);
my @array= qw/ string1 string2 /;
my $scalar= 32;
# prints the adress of the data type 
print \%hash;
# prints the reference of the data type in a single variable
print Dumper(\%hash);

# pushing different values through different scalars into the same data
my $ref1= \@array;
my $ref2= \@array;
# pushing with de-structuring syntax (->@*)
push $ref1->@*, 'new';
push $ref2->@*, 'bye';
print Dumper(@array);


# using references

# hash reference
my $hash_ref={
    a=>1,
    b=>2,
};
print Dumper($hash_ref);

# array reference
my $array_ref= [1,2,3];
print Dumper($array_ref);

# to get individual values for references
print Dumper($hash_ref->{a});
print Dumper($array_ref->[1]);

# ways to de-reference your whole hash
print Dumper($array_ref->@*);
print Dumper($hash_ref->%*);
print Dumper(@{$array_ref});
# ways to de-reference only your keys
print Dumper(keys $hash_ref->%*);
# ways to de-reference only your values
print Dumper(values $hash_ref->%*);

# NESTED Structures examples
# example 1
my $hash_ref1={
    a=>1,
    b=>2,
    c=>{
        new=>1,
        d=>2,
        abc=>[3,6,9]
    },
};
print Dumper($hash_ref1->{c}->{abc}->[1]);
# example 2
my $array_ref1=[
    1,
    [qw/w f g ah/],
    {
        y=>2,
        b=>{
            f=>{
                c=>[qw/w f g a h/],
            },
        },
    },
];
print Dumper($array_ref1->[2]->{b}->{f}->{c}->[2]);
# deleting
delete $hash_ref1->{b};
print Dumper($hash_ref1);
# ref tells us what type of data-reference we are working with
print Dumper(ref($hash_ref1));




