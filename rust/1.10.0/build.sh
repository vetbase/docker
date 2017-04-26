#/bin/bash

# setup testing repositories
echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# install build packages
apk add --no-cache rust=1.10.0-r1
apk add --no-cache cargo=0.14.0-r1

# clean up apk
rm -rf /var/cache/apk/*

# remove default /var/www/html
rm -rf /var/www