#!/usr/bin/perl 
package Person;
sub new {
    my $class = shift;
    my $self = {
        _firstName => shift,
        _next      => shift,
    };
    bless $self, $class;
    return $self;
}

sub setFirstName {
    my ( $self, $firstName ) = @_;
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}

sub getFirstName {
    my( $self ) = @_;
    return $self->{_firstName};
}

sub setNext {
	my ( $self, $next ) = @_;
	$self->{_next} = $next if defined($next);
	return $self->{_next};
}

sub getNext {
	my( $self ) = @_;
	return $self->{_next};
}

"CREAM GET THE MONEY!" or 1;