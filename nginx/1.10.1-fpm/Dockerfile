FROM alpine:3.4

# use /srv/www instead of /usr/share/nginx/html
#WORKDIR /srv/www

# copy default nginx.conf to image
#COPY lib/nginx.conf /etc/nginx/nginx.conf

# run build.sh that does the heavy lifting of setup of image
COPY build.sh /tmp/build.sh
RUN cd /tmp; chmod +x build.sh; ./build.sh

# remove build.sh
RUN rm -f /tmp/build.sh

CMD ["nginx", "-g", "daemon off;"]
