FROM alpine:edge

# run build.sh that does the heavy lifting of setup of image
COPY build.sh /tmp/build.sh
RUN cd /tmp; chmod +x build.sh; ./build.sh

WORKDIR /workspace
