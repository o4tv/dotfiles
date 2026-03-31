#!/bin/bash

CURRENT=$(hyprctl getoption general:gaps_in -j | jq '.custom' | tr -d '"' | awk '{print $1}')

if [ "$CURRENT" != "0" ]; then
    pgrep waybar && pkill start.sh
    hyprctl keyword general:gaps_in 0
    hyprctl keyword general:gaps_out 0
    hyprctl keyword general:col.active_border 0xff777777
else
    /home/tabin/.config/waybar/start.sh &
    hyprctl reload
fi
