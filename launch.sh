#!/usr/bin/env bash

pkill -x polybar
pkill picom

while pgrep -u $UID -x polybar >/dev/null; do
    sleep 0.1
done

sleep 1

picom --config ~/.config/picom/picom.conf -b &

sleep 2

polybar main &
