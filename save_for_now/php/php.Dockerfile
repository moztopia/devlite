FROM php:fpm

# Install dependencies for pecl and Redis
RUN apt-get update && apt-get install -y \
    libhiredis-dev \
    libzip-dev \
    unzip \
    && pecl install redis \
    && docker-php-ext-enable redis

# Set work directory
WORKDIR /var/www/html

# Permissions adjustment if needed
RUN chown -R www-data:www-data /var/www/html
