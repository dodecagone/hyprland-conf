#!/bin/sh

while true; do
    battery=$(upower -i "$(upower -e | grep BAT1)" | grep -E "percentage" | awk '{print $2}' | tr -d '%')
    if [ "$battery" -le "20" ]; then
        notify-send "Low Battery :("
        sleep 300
    else
        sleep 600
    fi
done
