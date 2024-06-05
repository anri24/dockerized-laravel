FROM composer:latest

ARG USER=laravel

RUN addgroup -g 1000 ${USER} && adduser -G ${USER} -g ${USER} -s /bin/sh -D ${USER}
 
USER ${USER}

WORKDIR /var/www/html
 
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]