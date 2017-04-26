#/bin/bash

# install build packages
apk add --no-cache git g++ make bash autoconf re2c sudo pcre pcre-dev file

# install Zephir
git clone git://github.com/phalcon/zephir.git /tmp/zephir;
cd /tmp/zephir && ./install -c;

# install Phalcon
git clone git://github.com/phalcon/cphalcon.git /tmp/cphalcon;
cd /tmp/cphalcon && zephir fullclean;
cd /tmp/cphalcon && zephir build --backend=ZendEngine3;

# add nginx user
adduser nginx

# remove unnecessary packages
apk del git g++ make bash autoconf re2c sudo file

# remove build files
rm -rf /tmp/cphalcon
rm -rf /tmp/zephir

# clean up apk
rm -rf /var/cache/apk/*

# remove default /var/www/html
rm -rf /var/www

# remove default php-fpm conf files
rm -f /usr/local/etc/php-fpm.d/docker.conf
rm -f /usr/local/etc/php-fpm.d/zz-docker.conf
