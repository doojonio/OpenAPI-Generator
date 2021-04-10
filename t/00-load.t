#!perl
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 3;

BEGIN {
  use_ok( 'OpenAPI::Generator' ) || print "Bail out!\n";

  for (qw(From::Pod Util)) {
    use_ok("OpenAPI::Generator::$_") || print "Bail out!\n"
  }
}

diag( "Testing OpenAPI::Generator $OpenAPI::Generator::VERSION, Perl $], $^X" );
