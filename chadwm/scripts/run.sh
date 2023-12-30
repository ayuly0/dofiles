#!/bin/sh
feh --randomize --bg-fill Pictures/Background/* &
xrdb merge ~/.Xresources 
xbacklight -set 10 &
feh --bg-fill ~/Pictures/wall/gruv.png &
xset r rate 200 50 &
picom --config .config/chadwm/scripts/picom.conf &

~/.config/chadwm/scripts/bar.sh &
while type dwm >/dev/null; do dwm && continue || break; done
