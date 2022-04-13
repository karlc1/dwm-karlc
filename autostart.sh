#!/bin/bash

nitrogen --restore 2> /dev/null &
xbindkeys 2> /dev/null || true & 
xset r rate 200 32 &
while true; do xsetroot -name "$( date +"%F %R" ) $(cat /sys/class/power_supply/BAT0/capacity)%"; sleep 10s; done &
xmodmap ~/.xmodmap 2> /dev/null &
xcape -e 'Mode_switch=Escape' &
xscreensaver -nosplash 2> /dev/null &

