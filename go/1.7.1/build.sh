#/bin/bash

# install build packages
apk add --no-cache go=1.7.1-r0

# setup Go paths
mkdir /workspace
export GOROOT=/workspace
export PATH=$PATH:$GOROOT/bin

# remove build packages
#apk del pkgconf

# clean up apk
rm -rf /var/cache/apk/*

# remove default /var/www/html
rm -rf /var/www
