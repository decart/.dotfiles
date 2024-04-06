#!/usr/bin/bash

# Install rust
curl -Lo rust-install.sh https://sh.rustup.rs
bash ./rust-install.sh -y
rm -f rust-install.sh

source $HOME/.cargo/env

cargo install \
  sd \
  cargo-update \
  topgrade \
  fd-find \
  bat \
  exa \
  du-dust \
  ripgrep \
  ytop \
  zoxide \
  git-delta \
  tree-sitter-cli \
  zellij \
  tealdeer && tldr --update
