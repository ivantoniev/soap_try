#!/usr/bin/perl
use strict;
use warnings;
use 5.014;
use SOAP::Transport::HTTP;

my $serv = SOAP::Transport::HTTP::CGI
    ->dispatch_to('/www1/ivan/soap/soap_arrays');
print STDERR 'i am in the dispatcher';
$serv->handle;

