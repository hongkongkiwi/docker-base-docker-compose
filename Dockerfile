FROM docker:latest
LABEL maintainer "Andy Savage <andy@savage.hk>"

ENV S3CMD_URL="https://github.com/s3tools/s3cmd.git"

Add ./compress_upload_files_to_s3 /usr/local/bin/compress_upload_files_to_s3

RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update \
    && apk add -qq docker-compose curl jq wget ca-certificates bash tar coreutils pwgen python3 git libmagic openssh-client \
    && apk add pass@testing \
    && pip3 install --upgrade pip \
    && pip3 install "git+${S3CMD_URL}" file-magic
