FROM php:7.2-fpm

# For composer
RUN apt-get -y update \
    && apt-get install -y zlib1g-dev \
    && apt-get install -y vim \
    && alias ll='ls -l' \
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
RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo_mysql

WORKDIR /opt/code
