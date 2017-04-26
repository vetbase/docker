FROM php:7-fpm-alpine

# use /srv instead of /var/www/html
WORKDIR /srv/www

# run build.sh that does the heavy lifting of setup of image
COPY build.sh /tmp/build.sh
RUN cd /tmp; chmod +x build.sh; ./build.sh

# copy config files
COPY lib/php.ini  /usr/local/etc/php/conf.d/php.ini
COPY lib/www.conf /usr/local/etc/php-fpm.d/www.conf

# remove build.sh
RUN rm -f /tmp/build.sh

# expose ports
EXPOSE 9000

# Run PHP-FPM on container start.
ENTRYPOINT ["php-fpm", "-F"]
