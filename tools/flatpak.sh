#!/bin/bash

pkgs=$(\cat ~/.dotfiles/tools/flatpak-list.txt | column -ts '|' | /usr/bin/fzf --margin=1,10% -m --layout=reverse | awk -F'[[:space:]][[:space:]]+' '{print $2}')

if [[ -n "$pkgs" ]]; then
	cmd="/usr/bin/flatpak install -y flathub $pkgs"
	eval $cmd
fi
