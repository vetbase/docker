#/bin/bash

# add nginx user
adduser nginx

# clean up apk
rm -rf /var/cache/apk/*

# remove default /var/www/html
rm -rf /var/www

# remove default php-fpm conf files
rm -f /usr/local/etc/php-fpm.d/docker.conf
rm -f /usr/local/etc/php-fpm.d/zz-docker.conf
