#!/bin/bash

# Set $VNC to 0 (in VNC) or 1 (not VNC)
xdpyinfo -display "${DISPLAY:-":0"}" 2>/dev/null | grep -q "VNC-EXTENSION"
VNC=$?

if [ $VNC -ne 0 ]; then
    compton -c -i .75 &
fi

~/.config/i3/fehbg
