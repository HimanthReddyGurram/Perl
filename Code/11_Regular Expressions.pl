#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

# Regular Expressions
# Please comment blocks of code to view output as per your convinience

my $a="puppy";
if( $a =~ /ppy/ ){   # '=~' is equality and '!~' is inequality
    say "matched";
}else{
    say "does not match";
}

# # Other Methods
# 1. If we want to add a backslash in the pattern then we should add a backslash before it "/ppy\//"
# 2. By using m-modifier we can just add patern inside the flower brackets m{dog} or m{pup/}
# 3. m{^puppy$} this type of modifier says that only the matter inside it should be from the beginning to the end. ex: it only matches the word "puppy" in this example.
# 4. "\w" inside reg expression for a single numeric/character.
# 5. "\W" inside reg expression for a single non-character/symbols.
# 6. "\d" inside reg expression for a single number.
# 7. "\d+" inside reg expression for a multiple numbers.
# 8. "\d*" inside reg expression for a condition where there can be numbers or none.
# 9. "\d{n}" inside reg expression for "n" number of numbers.
# 10. "\d{m,n}" inside reg expression for "m"to"n" number of numbers.
# 11. "\s" inside reg expression for anything that is a space.
# 12. "\S" inside reg expression for anything that is not a space.
# 13. m{}i for case insensitive matching.

# to capture extra values after matching
my $b="dog123 4";
if( $b =~ m{og(\d+)(\s)} ){   # the curly brackets captures the reg expression values after matching with a reg expression and is denoted by 1,2... respectively in their order.
    say "matched... $1 ($2)";
}else{
    say "does not match";
}

# more examples
my @list=qw/animal ball cat/;
foreach my $a (@list){
    $a=~m{^(\w{2})};
    say $1;
}

my @list3=qw/animal ball cat/;
foreach my $a (@list3){
    my @c= $a =~ m/(\w)(\w)/;
    say Dumper(\@c);
}

# s-modifer/ replacement modifier
my @list2=qw/animal ball cat/;
foreach my $a (@list2){
    $a =~ s/\w{2}/HI/;
    say $a;
}










