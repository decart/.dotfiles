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
    nixpkgs.tmux \
    nixpkgs.fzf \
    nixpkgs.peco \
    nixpkgs.fd \
    nixpkgs.bat \
    nixpkgs.direnv

# Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
rm -f lazygit.tar.gz

# Install gitui
curl -LO https://github.com/extrawurst/gitui/releases/latest/download/gitui-linux-musl.tar.gz
sudo tar -zxf gitui-linux-musl.tar.gz --directory /usr/local/bin
sudo chmod +x /usr/local/bin/gitui
rm -f gitui-linux-musl.tar.gz

# Install exa
EXA_VERSION=$(curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo exa.zip "https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v${EXA_VERSION}.zip"
sudo unzip -q exa.zip bin/exa -d /usr/local
rm -rf exa.zip

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

# Install poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -

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
