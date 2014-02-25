use strict;
use warnings;

package Luck;

    sub play{
        shift;
        my $choice = shift;
        my $random_number = int(rand()*10);
        my $is_it_right = check_luck($choice, $random_number);
        if ($is_it_right == 1) {
            return "Good job! Your guess was right!";
        } else {
            return "Too bad! The number was " . $random_number . ". You chose " . $choice . ".";
        }
    }

    sub check_luck {
        shift;
        my $number_to_check = shift;
        my $random_number = shift;
        if ($number_to_check == $random_number) {
            return 1;
        } else {
            return 0;
        }
    }
    
1;
