#!/bin/bash

mkdir -p "/home/v/Apps" && cd "/home/v/Apps" && wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.10.3/Obsidian-1.10.3.AppImage && chmod +x Obsidian-1.10.3.AppImage && sudo ln -s /home/v/Apps/Obsidian-1.10.3.AppImage /usr/bin/obsidian && wget https://github.com/localsend/localsend/releases/download/v1.17.0/LocalSend-1.17.0-linux-x86-64.AppImage && chmod +x LocalSend-1.17.0-linux-x86-64.AppImage && sudo ln -s /home/v/Apps/LocalSend-1.17.0-linux-x86-64.AppImage /usr/bin/localsend && wget https://download.blender.org/release/Blender5.0/blender-5.0.0-linux-x64.tar.xz && sudo ln -s /home/v/Apps/blender-5.0.0-linux-x64/blender /usr/bin/blender

cd
