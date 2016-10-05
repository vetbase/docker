#/bin/bash

# install build packages
apk add --no-cache go=1.6.3-r0

# setup Go paths
mkdir /workspace
export GOROOT=/workspace
export PATH=$PATH:$GOROOT/bin

# clean up apk
rm -rf /var/cache/apk/*

# remove default /var/www/html
rm -rf /var/www
