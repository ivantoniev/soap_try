use strict;
use warnings;
use 5.014;
use SOAP::Lite;
package User;

    sub return_array {
        shift;
        #my $array = shift;
        my @array = (5, 6, 7);
        my $soap_data_array = SOAP::Data->name(array => \@array)->type('array');
        return $soap_data_array;
    }

1;
