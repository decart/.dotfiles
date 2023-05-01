#!/bin/bash

echo "====== UBUNTU ======"

sudo apt update
# Install Linux build essential
sudo apt -y install llvm clang build-essential linux-headers-"$(uname -r)"

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

# Install php7.4
sudo apt -y install \
  php7.4 \
  php7.4-amqp \
  php7.4-ast \
  php7.4-bcmath \
  php7.4-curl \
  php7.4-decimal \
  php7.4-dev \
  php7.4-fpm \
  php7.4-gd \
  php7.4-geoip \
  php7.4-gmp \
  php7.4-imagick \
  php7.4-imap \
  php7.4-intl \
  php7.4-json \
  php7.4-mbstring \
  php7.4-mcrypt \
  php7.4-memcache \
  php7.4-memcached \
  php7.4-mongodb \
  php7.4-mysql \
  php7.4-opcache \
  php7.4-pgsql \
  php7.4-redis \
  php7.4-soap \
  php7.4-sqlite3 \
  php7.4-swoole \
  php7.4-uuid \
  php7.4-xdebug \
  php7.4-xml \
  php7.4-yaml \
  php7.4-zip

# Install PHP8.1
sudo apt -y install \
  php8.1 \
  php8.1-amqp \
  php8.1-ast \
  php8.1-bcmath \
  php8.1-curl \
  php8.1-dev \
  php8.1-fpm \
  php8.1-gd \
  php8.1-gmp \
  php8.1-imagick \
  php8.1-imap \
  php8.1-intl \
  php8.1-mbstring \
  php8.1-mcrypt \
  php8.1-memcache \
  php8.1-memcached \
  php8.1-mongodb \
  php8.1-mysql \
  php8.1-opcache \
  php8.1-pgsql \
  php8.1-redis \
  php8.1-soap \
  php8.1-sqlite3 \
  php8.1-swoole \
  php8.1-uuid \
  php8.1-xdebug \
  php8.1-xml \
  php8.1-yaml \
  php8.1-zip

