#!/usr/bin/perl
use strict;
use warnings;

my @options = ('piedra', 'papel', 'tijera');
print "Elige piedra, papel o tijera: ";
my $user_choice = <STDIN>;
chomp($user_choice);

my $computer_choice = $options[int(rand(3))];

print "La computadora eligió: $computer_choice\n";

if ($user_choice eq $computer_choice) {
    print "¡Es un empate!\n";
} elsif (($user_choice eq 'piedra' && $computer_choice eq 'tijera') ||
          ($user_choice eq 'papel' && $computer_choice eq 'piedra') ||
          ($user_choice eq 'tijera' && $computer_choice eq 'papel')) {
    print "¡Ganaste!\n";
} else {
    print "Perdiste.\n";
}
