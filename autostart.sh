#!/bin/bash

nitrogen --restore &
xbindkeys || true & 
xset r rate 350 32 &
while true; do xsetroot -name "$( date +"%F %R" ) $(cat /sys/class/power_supply/BAT0/capacity)%"; sleep 10s; done &
xmodmap ~/.xmodmap &
xcape -e 'Mode_switch=Escape'

