#!/bin/bash

source utils.sh

######################
## INSTALL PACKAGES ##
######################

release=$(release_name)
if [[ ($release == "ubuntu" || $release == "neon" || $release == "linuxmint") ]]; then
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
mkdir -p ~/.config/doublecmd

stow zsh
stow git
stow nvim
stow topgrade
stow lazygit
stow doublecmd

cp .zenv ~/.zenv

# Binary
sudo ln -s ~/.dotfiles/bin/* /usr/local/bin/
chmod +x bin/*

###################
## INSTALL TOOLS ##
###################
echo $'\n\n\n\n\n'
read -p "Do you want to install tools [Y/n]? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]?$ ]]; then
	source tools.sh
fi

###############
## CONFIG OS ##
###############

# Use zsh as default shell
# command -v zsh | sudo tee -a /etc/shells
# sudo chsh -s $(which zsh) $USER

