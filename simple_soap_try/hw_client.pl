#!/usr/bin/perl -w

use 5.014;
use strict;
use warnings;
use SOAP::Lite;

print "Calling the SOAP Server to say hello\n";
print "The SOAP server says: ";

#set the proxy and where to look for the package
my $soap =  SOAP::Lite->new(proxy =>'http://localhost/ivan/soap/simple_soap_try/index.cgi');
$soap->default_ns('Hello');

my $som = $soap->call('sayHello', 'James');
print $som->result, "\n";

#connect to a different namespace to call other method (to search for a better way)
my $sayBye = $soap->default_ns('Bye')->call('sayBye', 'James');
print $sayBye->result, "\n";

$soap->default_ns('Luck');
my $soap_method_call = $soap->call('play', 3);
print $soap_method_call->result, "\n";

