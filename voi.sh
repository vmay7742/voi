#!/bin/bash

sudo sysctl -w net.ipv4.ip_default_ttl=65

sudo tee /etc/sysctl.conf <<<net.ipv4.ip_default_ttl=65

sudo xbps-install -u xbps && sudo xbps-install -Su && sudo xbps-install -Su && sudo xbps-install -Suv

sudo xbps-install -Su void-repo-nonfree void-repo-multilib-nonfree void-repo-multilib
sudo xbps-install -Su nvidia nvidia-libs-32bit nv-codec-headers nvidia-opencl
sudo xbps-install -Su xorg libX11-devel libXinerama-devel libXft-devel base-devel bspwm picom sxhkd polybar dmenu feh tmux p7zip curl NetworkManager htop inxi lm_sensors pulseaudio pulsemixer wget bc fzf xclip plocate bash-completion noto-fonts-ttf noto-fonts-cjk scrot Thunar thunar-volman gvfs gvfs-mtp elogind mtpfs ntfs-3g udisks2 gnome-themes-extra papirus-icon-theme ffmpeg ffmpegthumbnailer tumbler xdotool brillo kitty firefox
sudo xbps-install -Su mediainfo mousepad yt-dlp qemu ufw sct rxvt-unicode mpv nsxiv nomacs darktable gimp gmic-gimp inkscape libreoffice zathura zathura-pdf-mupdf zathura-djvu zathura-ps zathura-cb obs qbittorrent syncthing keepassxc audacity

sudo ln -s "/etc/sv/dbus" "/var/service"
sudo ln -s "/etc/sv/NetworkManager" "/var/service/"

sudo sv up dbus NetworkManager
sudo sv status dbus NetworkManager

mkdir -p "/home/$USER/.config/bspwm" && mkdir -p "/home/$USER/.config/sxhkd"

cp "/usr/share/doc/bspwm/examples/bspwmrc" "/home/$USER/.config/bspwm/"
truncate -s 0 "/home/$USER/.config/bspwm/bspwmrc"
awk '{ print }' "/home/$USER/voi/bspwmrc" >> "/home/$USER/.config/bspwm/bspwmrc"

cp "/home/$USER/voi/sxhkdrc" "/home/$USER/.config/sxhkd/"

cp "/home/$USER/voi/xinitrc" "/home/$USER/.xinitrc"
cp "/home/$USER/voi/vimrc" "/home/$USER/.vimrc"
cp "/home/$USER/voi/bashrc" "/home/$USER/.bashrc"
cp "/home/$USER/voi/Xresources" "/home/$USER/.Xresources"

mkdir -p "/home/$USER/.config/kitty"
cp -r "/home/$USER/voi/kitty.conf" "/home/$USER/.config/kitty/"
mkdir -p "/home/$USER/.config/tmux"
cp -r "/home/$USER/voi/tmux.conf" "/home/$USER/.config/tmux/"

mkdir -p "/home/$USER/.local/share/fonts" && tar -xf "/home/$USER/voi/RobotoMono.tar.xz" -C "/home/$USER/.local/share/fonts/" && rm "/home/$USER/voo/RobotoMono.tar.xz" && fc-cache -fv

mkdir -p "/home/$USER/.config/polybar"
cp -r "/home/$USER/voi/config.ini" "/home/$USER/.config/polybar/"
cp -r "/home/$USER/voi/launch.sh" "/home/$USER/.config/polybar/"
chmod +x "/home/$USER/.config/polybar/launch.sh"
mkdir -p "/home/$USER/.config/polybar/modules"
cp -r "/home/$USER/voi/pipewire-mic.sh" "/home/$USER/.config/polybar/modules/"
chmod +x "/home/$USER/.config/polybar/modules/pipewire-mic.sh"
cp -r "/home/$USER/voi/search.sh" "/home/$USER/.config/polybar/modules/"
chmod +x "/home/$USER/.config/polybar/modules/search.sh"

mkdir -p "/home/$USER/.config/picom"
cp "/home/$USER/voi/picom.conf" "/home/$USER/.config/picom/"
#sudo cp "/home/$USER/voi/picom.conf" "/etc/xdg/"

groups $USER
sudo usermod -aG wheel storage video $USER

sudo ln -s /etc/sv/elogind /var/service/
sudo sv up elogind
sudo sv status elogind

mkdir -p "/home/$USER/qemu"

sudo updatedb

xrdb .Xresources

sudo reboot
