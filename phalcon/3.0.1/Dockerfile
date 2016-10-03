FROM php:7-fpm-alpine

MAINTAINER Vetbase Engineering
LABEL description="Phalcon 3.0.1 for PHP development"

# use /srv instead of /var/www/html
WORKDIR /srv

# run build.sh that does the heavy lifting of setup of image
COPY build.sh /tmp/build.sh
RUN cd /tmp; chmod +x build.sh; ./build.sh

# copy config files
COPY php.ini /usr/local/etc/php/conf.d/php.ini
COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["php-fpm"]
