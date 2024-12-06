# Gunakan ARG untuk versi PHP
ARG PHP_VERSION
FROM php:${PHP_VERSION}-fpm

WORKDIR /var/www/html

# Instal ekstensi yang diperlukan
RUN docker-php-ext-install pdo pdo_mysql
