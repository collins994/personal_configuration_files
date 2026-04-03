#! /bin/bash

battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

if [[ $battery_level -le 10 ]]; then
	dunstify -u critical "battery" "battery is at $battery_level"
else
	dunstify -u normal "battery" "battery is at $battery_level"
fi
