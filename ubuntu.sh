#!/bin/bash

sudo apt update
sudo apt -y install llvm clang build-essential

# Install server
sudo apt -y install \
  zip \
  unzip \
  git \
  ripgrep \
  fd-find \
  stow \
  python3.9-full \
  nginx \
  mariadb-server \
  mariadb-client \
  postgresql-all \
  imagemagick

# Add php repository

sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
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

# Install PHP 8.0
sudo apt -y install \
  php8.0 \
  php8.0-amqp \
  php8.0-ast \
  php8.0-bcmath \
  php8.0-curl \
  php8.0-dev \
  php8.0-fpm \
  php8.0-gd \
  php8.0-gmp \
  php8.0-imagick \
  php8.0-imap \
  php8.0-intl \
  php8.0-mbstring \
  php8.0-mcrypt \
  php8.0-memcache \
  php8.0-memcached \
  php8.0-mongodb \
  php8.0-mysql \
  php8.0-opcache \
  php8.0-pgsql \
  php8.0-redis \
  php8.0-soap \
  php8.0-sqlite3 \
  php8.0-swoole \
  php8.0-uuid \
  php8.0-xdebug \
  php8.0-xml \
  php8.0-yaml \
  php8.0-zip

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

# Install Composer
curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
