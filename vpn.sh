#!/bin/sh

case "$1" in
  "--status")
    if pgrep -f openvpn > /dev/null 2>&1; then
      echo "%{F#00ff00} 󰇧  %{F-}"
    else
      echo " 󰇧 "
    fi
    ;;
  "--toggle")
  kitty -e sudo bash -c "echo 'OpenVPN...'; exec openvpn --config /home/$USER/vpn.ovpn"

    ;;
  *)
esac

