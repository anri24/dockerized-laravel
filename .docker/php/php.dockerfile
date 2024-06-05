FROM php:8.3-fpm-alpine

ARG USER=laravel

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN addgroup -g 1000 ${USER} && adduser -G ${USER} -g ${USER} -s /bin/sh -D ${USER}

USER ${USER}



