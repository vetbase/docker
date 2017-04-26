#/bin/bash

# install build packages
apk add --no-cache go=1.7.4-r2
apk add --no-cache git=2.12.1-r0
apk add --no-cache musl-dev=1.1.16-r6

# setup Go paths
export GOPATH=/workspace
export PATH=$PATH:$GOPATH/bin

# install go packages
go get github.com/steinbacher/goose/cmd/goose

# delete unnecessary packages
apk del git

# clean up apk
rm -rf /var/cache/apk/*

# remove default /var/www/html
rm -rf /var/www