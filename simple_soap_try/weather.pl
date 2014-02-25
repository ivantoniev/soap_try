#!/usr/bin/perl
use 5.014;
use SOAP::Lite on_action => sub {sprintf '%s/%s', @_}, 'trace', 'debug';

my $serv = SOAP::Lite->new(uri => 'http://ws.cdyne.com/WeatherWS/', proxy => 'http://wsf.cdyne.com/WeatherWS/Weather.asmx');
my $answ = $serv->call(SOAP::Data->name('GetWeatherInformation')->attr({xmlns => 'http://ws.cdyne.com/WeatherWS'}));
my $result = $answ->result;

my %hash = %$result;
my $weather_descript = $hash{'WeatherDescription'};
foreach my $ref ( @$weather_descript) {
 my %deref = %$ref;
 print "\n";
 foreach my $dereff( %deref ) {
   print $dereff;
   print "\n";
 }
}