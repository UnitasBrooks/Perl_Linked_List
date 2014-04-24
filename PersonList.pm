
package PersonList;
use lib '/home/joe.yuhas/PerlPlay/';
use Person;

sub new {
	my $class = shift;
	my $self = {
		_head => shift,
	};

	bless $self, $class;
	return $self;
}

sub pushP {
	my $self = $_[0];
	my $new = $_[1];

	$new->setNext($self->{_head});
	$self->{_head} = $new if defined($new);
	return $self->{_head};
}

sub popP {
	my $self = @_;
	return $self->{_head};
}

sub printAll {
	my $self = $_[0];
	my $current = $self->{_head};
	while($current != undef) {
		$name = $current->getFirstName();
		print $name . "\n";
		$current = $current->getNext();
	}
}

1;