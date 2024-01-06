#!/bin/bash

echo "====== UBUNTU ======"

sudo apt update
# Install Linux build essential
sudo apt -y install llvm
sudo apt -y install clang
sudo apt -y install build-essential
sudo apt -y install pkg-config
sudo apt -y install libssl-dev
sudo apt -y install linux-headers-"$(uname -r)"

# Install server
sudo apt -y install \
  curl \
  zsh \
  zip \
  unzip \
  p7zip-full \
  git \
  stow \
  python3-full \
  python3-pip \
  python3-dev \
  python3-setuptools \
  meld \
  nginx \
  mariadb-server \
  mariadb-client \
  libmariadb-dev \
  fzf \
  imagemagick

sudo apt -y install\
  djvulibre-bin \
  mupdf-tools \
  ctorrent \
  gettext \
  odt2txt \
  isoinfo \
  thefuck

# Qt5
# sudo apt install -y qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools

# Add php repository

sudo apt -y install software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo add-apt-repository -y ppa:ondrej/nginx
sudo apt update

