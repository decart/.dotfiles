#!/bin/bash

source utils.sh

######################
## INSTALL PACKAGES ##
######################

release=$(release_name)
if [[ ($release == "ubuntu" || $release == "neon") ]]; then
  source ubuntu.sh
elif [[ $(release_name) == "fedora" ]]; then
  source fedora.sh
fi

# Install rust packages
source rust.sh

# Install packages from github
source github.sh

# Sotow configs
mkdir -p ~/.config/nvim

stow zsh
stow git
stow nvim
stow topgrade
stow lazygit

cp .zenv ~/.zenv

# Binary
sudo ln -s ~/.dotfiles/bin/* /usr/local/bin/
chmod +x bin/*

###############
## CONFIG OS ##
###############

# Use zsh as default shell
# command -v zsh | sudo tee -a /etc/shells
# sudo chsh -s $(which zsh) $USER

