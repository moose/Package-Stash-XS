use strict;
use warnings;
use Test::More;
use Data::Dumper;
use Package::Stash;

# see https://github.com/Perl/perl5/issues/24845

my @tests = ('cat') x 324;

for my $test (@tests) {
  my $stash = Package::Stash->new('Data::Dumper');
  my @l = $stash->list_all_symbols('CODE');
}

1;
