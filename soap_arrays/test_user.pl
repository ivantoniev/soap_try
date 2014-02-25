use 5.014;
use warnings;
use strict;
use SOAP::Lite 'trace', 'debug';
#set the proxy and where to look for the package
my $soap = SOAP::Lite->new(proxy => 'http://localhost/ivan/soap/soap_arrays/index.cgi');
$soap->default_ns('TestClass');

my @params = (3, 4, 5);
my $soap_elements = SOAP::Data->value(SOAP::Data->name(array => \@params));

# #my $serializer = SOAP::Serializer->new();
# #$serializer->readable('true');
# #my $xml = $serializer->serialize($soap_elements);
# #say $xml;

my $call_answ = $soap->call('return_array', $soap_elements)->result;
#say @$call_answ[0];
