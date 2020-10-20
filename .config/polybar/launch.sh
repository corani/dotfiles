#!/bin/bash
LOGFILE="${XDG_DATA_HOME:-~/.local/share}/polybar/example.log"
mkdir -p "$(dirname "${LOGFILE}")"

killall -q polybar

polybar example -r >> "${LOGFILE}" 2>&1 &
