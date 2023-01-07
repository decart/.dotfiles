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

sudo dnf install -y \
  php81-php \
  php81-php-ast \
  php81-php-bcmath \
  php81-php-cli \
  php81-php-devel \
  php81-php-fpm \
  php81-php-gd \
  php81-php-imap \
  php81-php-intl \
  php81-php-mbstring \
  php81-php-pdo \
  php81-php-mysqlnd \
  php81-php-pgsql \
  php81-php-xml \
  php81-php-pear \
  php81-php-pecl-amqp \
  php81-php-pecl-csv \
  php81-php-pecl-geoip \
  php81-php-pecl-imagick-im7 \
  php81-php-pecl-mcrypt \
  php81-php-pecl-memcache \
  php81-php-pecl-openswoole \
  php81-php-pecl-xdebug3 \
  php81-php-pecl-yaml \
  php81-php-pecl-zip \
  php74 \
  php74-php-fpm \
  php74-php-devel \
  php74-php-gd \
  php74-php-imap \
  php74-php-intl \
  php74-php-json \
  php74-php-mbstring \
  php74-php-pdo \
  php74-php-mysqlnd \
  php74-php-pgsql \
  php74-php-xml \
  php74-php-pear \
  php74-php-pecl-amqp \
  php74-php-pecl-csv \
  php74-php-pecl-geoip \
  php74-php-pecl-imagick-im7 \
  php74-php-pecl-mcrypt \
  php74-php-pecl-memcache \
  php74-php-pecl-xdebug3 \
  php74-php-pecl-yaml \
  php74-php-pecl-zip

sudo pecl channel-update pecl.php.net

