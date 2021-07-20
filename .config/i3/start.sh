#!/bin/bash

# Set $VNC to 0 (in VNC) or 1 (not VNC)
xdpyinfo -display "${DISPLAY:-":0"}" 2>/dev/null | grep -q "VNC-EXTENSION"
VNC=$?

if [ $VNC -ne 0 ]; then
    compton --config ~/.config/compton/config -b
fi

~/.config/polybar/launch.sh
~/.config/i3/fehbg
dunst &
picom &
