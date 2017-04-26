#/bin/bash

# install build packages
apk add --no-cache nginx nginx-common

# create pid directory
mkdir /run/nginx

# clean up apk
rm -rf /var/cache/apk/*
