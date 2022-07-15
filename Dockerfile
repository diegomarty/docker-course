FROM composer as backend

LABEL maintainer="contacto@diegomarty.com"
LABEL application="codely-hello-world"

ENV DISPLAY_ERRORS="On"

WORKDIR /app

COPY composer.json composer.lock /app/
RUN composer install \
    --ignore-plataform-reqs \
    --no-ansi \
    --no-autoloader \
    --no-dev \
    --no-interaction \
    --no-scripts

COPY . /app/
RUN composer dump-autoload --no-dev --optimize --classmap-authoritative

FROM php:7.2-apache

RUN pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo pdo_mysql

WORKDIR /app
COPY --from=backen /app /var/www/html/
COPY php.ini /usr/local/etc/php/php.ini
