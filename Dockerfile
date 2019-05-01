# Simple docker client

FROM alpine:latest
MAINTAINER Jonathan Rich <richj@oregonstate.edu>

# Install curl
RUN apk -U add curl

# get server.js file
RUN curl https://notx.io/client.sh > client.sh
RUN chmod 777 client.sh

# Run on start
CMD ./client.sh
