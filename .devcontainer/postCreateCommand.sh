#!/bin/bash

##### postCreateCommand.sh
#
# Do you need to do something after your container has been created? Install some 
# ancillary utilities? 
#
# set -eux
# export postCreateCommand=true

##### Install OS Package Updates

apt update

##### Install Utilities

apt install -y \
    iputils-ping

##### Install PHP

export PHP_VERSION=8.3

apt install -y \
    php${PHP_VERSION}-cli \
    php${PHP_VERSION}-xml \
    php${PHP_VERSION}-sqlite3 \
    php${PHP_VERSION}-mysql \
    php${PHP_VERSION}-redis \
    php${PHP_VERSION}-memcached \
    php${PHP_VERSION}-pgsql \
    php${PHP_VERSION}-pdo-pgsql \
    php${PHP_VERSION}-mbstring \
    php${PHP_VERSION}-curl \
    php${PHP_VERSION}-zip \
    php${PHP_VERSION}-bcmath \
    php${PHP_VERSION}-intl \
    php${PHP_VERSION}-tokenizer \
    php${PHP_VERSION}-pdo \
    php${PHP_VERSION}-xdebug \
    php${PHP_VERSION}-gd

##### Install Composer

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

##### Add your changes below here. 