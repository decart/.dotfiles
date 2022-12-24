#!/bin/bash

# Install server
nix-env -iA \
    nixpkgs.nginx \
    nixpkgs.mysql80 \
    nixpkgs.postgresql \
    nixpkgs.imagemagick

# Install PHP7.4
nix-env -iA \
    nixpkgs.php74 \
    nixpkgs.php74Extensions.gd \
    nixpkgs.php74Extensions.zip \
    nixpkgs.php74Extensions.xml \
    nixpkgs.php74Extensions.pdo \
    nixpkgs.php74Extensions.pdo_pgsql \
    nixpkgs.php74Extensions.pdo_mysql \
    nixpkgs.php74Extensions.pdo_sqlite \
    nixpkgs.php74Extensions.dom \
    nixpkgs.php74Extensions.gmp \
    nixpkgs.php74Extensions.zlib \
    nixpkgs.php74Extensions.json \
    nixpkgs.php74Extensions.intl \
    nixpkgs.php74Extensions.imap \
    nixpkgs.php74Extensions.exif \
    nixpkgs.php74Extensions.curl \
    nixpkgs.php74Extensions.amqp \
    nixpkgs.php74Extensions.redis \
    nixpkgs.php74Extensions.posix \
    nixpkgs.php74Extensions.pgsql \
    nixpkgs.php74Extensions.iconv \
    nixpkgs.php74Extensions.xdebug \
    nixpkgs.php74Extensions.swoole \
    nixpkgs.php74Extensions.bcmath \
    nixpkgs.php74Extensions.sqlite3 \
    nixpkgs.php74Extensions.openssl \
    nixpkgs.php74Extensions.opcache \
    nixpkgs.php74Extensions.mongodb \
    nixpkgs.php74Extensions.imagick \
    nixpkgs.php74Extensions.gettext \
    nixpkgs.php74Extensions.mbstring \
    nixpkgs.php74Extensions.memcached

# Install PHP8.0
nix-env -iA \
    nixpkgs.php \
    nixpkgs.php80Packages.composer \
    nixpkgs.php80Extensions.gd \
    nixpkgs.php80Extensions.zip \
    nixpkgs.php80Extensions.xml \
    nixpkgs.php80Extensions.pdo \
    nixpkgs.php80Extensions.pdo_pgsql \
    nixpkgs.php80Extensions.pdo_mysql \
    nixpkgs.php80Extensions.pdo_sqlite \
    nixpkgs.php80Extensions.dom \
    nixpkgs.php80Extensions.gmp \
    nixpkgs.php80Extensions.zlib \
    nixpkgs.php80Extensions.intl \
    nixpkgs.php80Extensions.imap \
    nixpkgs.php80Extensions.exif \
    nixpkgs.php80Extensions.curl \
    nixpkgs.php80Extensions.amqp \
    nixpkgs.php80Extensions.redis \
    nixpkgs.php80Extensions.posix \
    nixpkgs.php80Extensions.pgsql \
    nixpkgs.php80Extensions.iconv \
    nixpkgs.php80Extensions.xdebug \
    nixpkgs.php80Extensions.swoole \
    nixpkgs.php80Extensions.bcmath \
    nixpkgs.php80Extensions.sqlite3 \
    nixpkgs.php80Extensions.openssl \
    nixpkgs.php80Extensions.opcache \
    nixpkgs.php80Extensions.mongodb \
    nixpkgs.php80Extensions.imagick \
    nixpkgs.php80Extensions.gettext \
    nixpkgs.php80Extensions.mbstring \
    nixpkgs.php80Extensions.memcached 

# Install PHP8.1
nix-env -iA \
    nixpkgs.php \
    nixpkgs.php81Packages.composer \
    nixpkgs.php81Extensions.gd \
    nixpkgs.php81Extensions.zip \
    nixpkgs.php81Extensions.xml \
    nixpkgs.php81Extensions.pdo \
    nixpkgs.php81Extensions.pdo_pgsql \
    nixpkgs.php81Extensions.pdo_mysql \
    nixpkgs.php81Extensions.pdo_sqlite \
    nixpkgs.php81Extensions.dom \
    nixpkgs.php81Extensions.gmp \
    nixpkgs.php81Extensions.zlib \
    nixpkgs.php81Extensions.intl \
    nixpkgs.php81Extensions.imap \
    nixpkgs.php81Extensions.exif \
    nixpkgs.php81Extensions.curl \
    nixpkgs.php81Extensions.amqp \
    nixpkgs.php81Extensions.redis \
    nixpkgs.php81Extensions.posix \
    nixpkgs.php81Extensions.pgsql \
    nixpkgs.php81Extensions.iconv \
    nixpkgs.php81Extensions.xdebug \
    nixpkgs.php81Extensions.swoole \
    nixpkgs.php81Extensions.bcmath \
    nixpkgs.php81Extensions.sqlite3 \
    nixpkgs.php81Extensions.openssl \
    nixpkgs.php81Extensions.opcache \
    nixpkgs.php81Extensions.mongodb \
    nixpkgs.php81Extensions.imagick \
    nixpkgs.php81Extensions.gettext \
    nixpkgs.php81Extensions.mbstring \
    nixpkgs.php81Extensions.memcached 

