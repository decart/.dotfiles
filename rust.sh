#!/usr/bin/bash

# Install rust
curl -Lo rust-install.sh https://sh.rustup.rs
bash ./rust-install.sh -y
rm -f rust-install.sh

source $HOME/.cargo/env

cargo install fd-find
cargo install bat
cargo install exa
cargo install du-dust
cargo install ripgrep
cargo install ytop
cargo install tealdeer && tldr --update
cargo install zoxide
cargo install git-delta

