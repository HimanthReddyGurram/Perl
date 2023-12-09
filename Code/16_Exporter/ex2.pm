package Ourmodule;

use strict;
use warnings;

use Exporter qw/import/;
our @EXPORT= qw/ add_nums add_two_nums/;
# our @EXPORT_OK= qw/ add_nums add_two_nums/;  # this will not import all the modules and each module have to be imported seperately.

sub add_nums{
    my($a,$b)=@_;
    return $a+$b;
};

sub add_two_nums{
    my($class,$a,$b)=@_;
    return $a+$b;
};






1;