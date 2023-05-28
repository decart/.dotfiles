#!/usr/bin/bash

echo "====== FEDORA ======"

sudo dnf check-update -y && sudo dnf upgrade -y
sudo dnf group install -y "C Development Tools and Libraries" "Development Tools"
sudo dnf install -y llvm kernel-devel kernel-headers

sudo dnf install -y http://rpms.remirepo.net/fedora/remi-release-37.rpm
sudo dnf config-manager --set-enabled remi
sudo dnf check-update -y && sudo dnf upgrade -y

sudo dnf install -y \
  clang \
  curl \
  fuse \
  zsh \
  zip \
  unzip \
  git \
  stow \
  gnome-tweaks \
  util-linux-user \
  python3 \
  mariadb-server \
  mariadb \
  postgresql-server \
  postgresql \
  libpq \
  libpq-devel \
  ImageMagick7

sudo /usr/bin/postgresql-setup --initdb # Init postgresql

