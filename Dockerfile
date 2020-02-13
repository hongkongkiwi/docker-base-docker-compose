FROM docker:latest
LABEL maintainer "Andy Savage <andy@savage.hk>"

RUN apk add -qq docker-compose
