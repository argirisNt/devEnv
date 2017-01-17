#!/bin/sh

xscreensaver -no-splash &
$HOME/.config/awesome/xscreensaver-reset-kbd-us.pl &

exec awesome
