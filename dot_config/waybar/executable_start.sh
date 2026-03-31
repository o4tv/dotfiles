#!/bin/bash

trap "killall waybar" EXIT

while true; do
    waybar > /dev/null 2>&1 &
    sleep 1
    inotifywait -r -e create,modify,delete,move "$HOME/.config/waybar"
    killall waybar
done

