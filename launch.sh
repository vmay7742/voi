#!/usr/bin/env bash

pkill -x polybar
pkill picom

while pgrep -u $UID -x polybar >/dev/null; do
    sleep 0.1
done

sleep 1

picom --config ~/.config/picom/picom.conf -b &

sleep 2

#polybar main &


MONITOR=$(xrandr --query | grep " primary" | cut -d' ' -f1) polybar main &

if type "xrandr"; then
 for mon in $(xrandr --query | grep " connected" | cut -d' ' -f1); do
  MONITOR=$mon polybar --reload  sec &
 done
else
 polybar --reload sec &
fi
