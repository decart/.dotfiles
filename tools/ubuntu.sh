#!/bin/bash

sudo apt -y install djvulibre-bin
sudo apt -y install mupdf-tools
sudo apt -y install ctorrent
sudo apt -y install gettext
sudo apt -y install odt2txt
sudo apt -y install thefuck

if ! [ -x "$(command -v flatpak)" ]; then
	sudo apt -y install flatpak
	/usr/bin/flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
fi
