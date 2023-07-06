function usephp {
    readonly version=${1:?"The version must be specified."}

    sudo update-alternatives --set php "/usr/bin/php$version"
    sudo update-alternatives --set phar "/usr/bin/phar$version"
    sudo update-alternatives --set phar.phar "/usr/bin/phar.phar$version"
}

function get-composer {
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
  php composer-setup.php
  php -r "unlink('composer-setup.php');"
  chmod +x composer.phar
}
