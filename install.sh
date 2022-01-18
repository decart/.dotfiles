#!/bin/bash

######################
## INSTALL PACKAGES ##
######################

# Install nix package manager
curl -L https://nixos.org/nix/install | sh

# Source nix
. ~/.nix-profile/etc/profile.d/nix.sh

nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update

# Nix main
nix-env -iA \
    nixpkgs.zsh \
    nixpkgs.antibody \
    nixpkgs.git \
    nixpkgs.gitui \
    nixpkgs.tmux \
    nixpkgs.stow \
    nixpkgs.fzf \
    nixpkgs.peco \
    nixpkgs.ripgrep \
    nixpkgs.fd \
    nixpkgs.bat \
    nixpkgs.curl \
    nixpkgs.python39Full \
    nixpkgs.direnv

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

if [[ $(lsb_release -is) == "Ubuntu" ]]; then
  source ubuntu.sh
else
  source nix.sh
fi

nix-collect-garbage

# stow
mkdir -p ~/.config/nvim

stow zsh
stow git
stow nvim

cp .zenv ~/.zenv

# Binary
sudo ln -s ~/.dotfiles/bin/* /usr/local/bin/
chmod +x bin/*

# Oh My Posh
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

###############
## CONFIG OS ##
###############

# Use zsh as default shell
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $USER

# zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
