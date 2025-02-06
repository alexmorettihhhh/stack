package Stack;

sub new {
    my $class = shift;
    my $self = { items => [] };
    bless $self, $class;
    return $self;
}

sub push {
    my ($self, $item) = @_;
    push @{$self->{items}}, $item;
}

sub pop {
    my $self = shift;
    return pop @{$self->{items}};
}

sub peek {
    my $self = shift;
    return $self->{items}[-1];
}

sub is_empty {
    my $self = shift;
    return scalar @{$self->{items}} == 0;
}

1;

my $stack = Stack->new();
$stack->push(1);
$stack->push(2);
print $stack->pop();  # 2