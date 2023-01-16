FROM php:fpm-alpine3.17

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN addgroup -g 1000 laravel &&\
    adduser -u 1000 -G laravel -g laravel -s /bin/sh -D laravel

RUN chown -R laravel:laravel /var/www/html

USER laravel

