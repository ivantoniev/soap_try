#!/usr/bin/perl -w

use strict;
use warnings;
use 5.014;
use SOAP::Lite;
use Scalar::Util;

my $soap = SOAP::Lite->new(proxy => 'http://localhost/ivan/soap/simple_soap_try/index.cgi');
$soap->default_ns('Luck');

print "Enter a number between 1 and 10: ";
my $choice = <STDIN>;
chomp($choice);

if (Scalar::Util::looks_like_number($choice)){
    my $soap_method_call = $soap->call('play', $choice);
    print $soap_method_call->result, "\n";
} else {
    print "You can enter only numbers!\n";
}
