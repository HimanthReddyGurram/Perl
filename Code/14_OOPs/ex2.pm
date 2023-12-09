package Dog;

use strict;
use warnings;

# initialising a class
sub new{
    my ($class, $breed, $height, $weight, $color, $name) = @_;

    my $self={
        breed => $breed,
        height => $height,
        weight => $weight,
        color => $color,
        name => $name,
    };

    bless $self,$class;
    return $self;
};

# getters
sub breed{
    my $self=shift @_;
    return $self->{breed};
};

sub height_weight{
    my $self=shift @_;
    return $self->{height} ." " . $self->{weight};
};

# setters
sub set_height_weight{
    my ($self,$height,$weight)= @_;
    $self->{height}=$height;
    $self->{weight}=$weight;
};

sub DESTROY{
    print "end";
};




1;  # we should use this a truthy value