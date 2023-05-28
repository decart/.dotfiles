#!/bin/bash

echo "====== UBUNTU ======"

sudo apt update
# Install Linux build essential
sudo apt -y install llvm
sudo apt -y install clang
sudo apt -y install build-essential
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
  nginx \
  mariadb-server \
  mariadb-client \
  postgresql-all \
  imagemagick

# Add php repository

sudo apt -y install software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo add-apt-repository -y ppa:ondrej/nginx
sudo apt update

