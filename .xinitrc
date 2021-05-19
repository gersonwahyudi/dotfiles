#!/bin/sh

xset r rate 300 50 &

/usr/bin/feh --bg-fill pictures/wallpapers/howl.jpg --no-fehbg &

exec slstatus &
exec dwm
