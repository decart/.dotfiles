#!/usr/bin/bash

# Install rust
curl -Lo rust-install.sh https://sh.rustup.rs
bash ./rust-install.sh -y
rm -f rust-install.sh

source $HOME/.cargo/env

cargo install \
  sd \
  topgrade \
  fd-find \
  bat \
  exa \
  du-dust \
  ripgrep \
  ytop \
  zoxide \
  git-delta \
  tealdeer && tldr --update

