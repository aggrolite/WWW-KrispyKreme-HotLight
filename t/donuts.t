use strict;
use warnings;

use Test::More;
use WWW::KrispyKreme::HotLight;

can_ok('WWW::KrispyKreme::HotLight',qw(new locations));

my $geo = [35.045556, -85.267222];    # chattanooga, tn
my $donuts = WWW::KrispyKreme::HotLight->new(where => $geo);
my $locations = $donuts->locations;

isa_ok($donuts,         'WWW::KrispyKreme::HotLight');
isa_ok($locations,      'ARRAY');
isa_ok($locations->[0], 'HASH');

my @keys = qw(locationId hotLightOn phone zipcode state city geoLocation url title address);
ok(exists $locations->[0]{$_}, "$_ hash key exists") for @keys;

done_testing;
