#!/bin/bash

######################
## INSTALL PACKAGES ##
######################

if [[ $(lsb_release -is) == "Ubuntu" ]]; then
  source ubuntu.sh
else
  source nix.sh
fi

# Install additional packages
source github.sh
source rust.sh

# Sotow configs
mkdir -p ~/.config/nvim

stow zsh
stow git
stow nvim

cp .zenv ~/.zenv

# Binary
sudo ln -s ~/.dotfiles/bin/* /usr/local/bin/
chmod +x bin/*

###############
## CONFIG OS ##
###############

# Use zsh as default shell
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $USER

