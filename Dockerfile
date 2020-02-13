FROM docker:latest
LABEL maintainer "Andy Savage <andy@savage.hk>"

RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update \
    && apk add -qq docker-compose curl jq wget ca-certificates bash tar coreutils pwgen \
    && apk add pass@testing s3cmd@testing
