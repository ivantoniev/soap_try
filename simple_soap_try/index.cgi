#!/usr/bin/perl

use SOAP::Transport::HTTP;
my $serv = SOAP::Transport::HTTP::CGI
    ->dispatch_to('/www1/ivan/soap/simple_soap_try/');
#print STDERR 'i am in the dispatcher';
$serv->handle;
