#!/usr/bin/perl

my $blanked = 0;
open (IN, "xscreensaver-command -watch |");
while (<IN>) {
    if (m/^(BLANK|LOCK)/) {
        if (!$blanked) {
           system "setxkbmap -layout us";
           $blanked = 1;
        }
    } elsif (m/^UNBLANK/) {
        system "setxkbmap -layout us,gr";
        $blanked = 0;
    }
}
