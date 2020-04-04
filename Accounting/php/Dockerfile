FROM php:7.2.10-fpm

# For composer
RUN apt-get -y update \
    && apt-get install -y zlib1g-dev \
    && apt-get install -y vim \
    && apt-get install -y curl \
    && apt-get install -y git \
    && docker-php-ext-install zip

# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

# Set composer environment
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin

# Install laravel installer
RUN composer global require "laravel/installer"

# PHP's DB setting
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo_mysql sockets

# Redis setting
RUN git clone https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis
RUN docker-php-ext-install redis

# vue setting
RUN apt-get install -y gnupg \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs


WORKDIR /opt/src

RUN composer global require "laravel/installer"

