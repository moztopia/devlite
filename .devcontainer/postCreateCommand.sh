#!/bin/bash

##### postCreateCommand.sh
#
# Purpose:
#
#   - Executes once after the container has been created and VS Code has attached for the very first time.
#
#   - Meant for one-time setup tasks in the container workspace,
#     for example installing dependencies or configuring project-specific settings that don’t
#     need to reoccur on subsequent container starts.
#
set -eux
#

export postCreateCommand=true

##### Install express for node

npm install express

##### Install php-fpm for the workstation

echo "tzdata tzdata/Areas select Asia" | sudo debconf-set-selections
echo "tzdata tzdata/Zones/Asia select Bangkok" | sudo debconf-set-selections

PHP_MAJOR_MINOR_VERSION=$(sudo readlink /usr/local/php/current | grep -oP '\d+\.\d+')
if [ -z "$PHP_MAJOR_MINOR_VERSION" ]; then
    echo "(!) Could not detect PHP version from /usr/local/php/current symlink. Assuming 8.3 as a fallback."
    PHP_MAJOR_MINOR_VERSION="8.3"
fi
echo "Detected/Using PHP version: $PHP_MAJOR_MINOR_VERSION"

sudo apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    php${PHP_MAJOR_MINOR_VERSION}-fpm \
    php${PHP_MAJOR_MINOR_VERSION}-mysql \
    php${PHP_MAJOR_MINOR_VERSION}-curl \
    php${PHP_MAJOR_MINOR_VERSION}-intl \
    php${PHP_MAJOR_MINOR_VERSION}-gd \
    php${PHP_MAJOR_MINOR_VERSION}-zip \
    && sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*

sudo DEBIAN_FRONTEND=noninteractive dpkg-reconfigure tzdata

FPM_POOL_CONF="/etc/php/${PHP_MAJOR_MINOR_VERSION}/fpm/pool.d/www.conf"

if [ -f "$FPM_POOL_CONF" ]; then
    echo "Configuring PHP-FPM pool '$FPM_POOL_CONF' to listen on 0.0.0.0:9000..."
    sudo sed -i.bak 's|^listen = .*$|listen = 0.0.0.0:9000|' "$FPM_POOL_CONF"
    echo "PHP-FPM listen directive updated."

else
    echo "(!) PHP-FPM pool configuration file not found at '$FPM_POOL_CONF'. Manual configuration may be needed."
    exit 1
fi

echo "Starting php-fpm service..."
sudo service php${PHP_MAJOR_MINOR_VERSION}-fpm start

echo "PHP-FPM setup steps complete."

##### Add your changes below here.