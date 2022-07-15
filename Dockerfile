FROM php:7.2-apache

LABEL maintainer="contacto@diegomarty.com"
LABEL application="codely-hello-world"

RUN pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo pdo_mysql

ENV DISPLAY_ERRORS="On"

COPY php.ini /usr/local/etc/php/php.ini
COPY index.php /var/www/html/
