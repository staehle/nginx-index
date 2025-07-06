FROM docker.io/library/nginx:stable-alpine

ARG TZ="America/Chicago"

RUN apk add --update tzdata

ENV TZ=${TZ}

RUN mkdir /http

COPY nginx.conf /etc/nginx/nginx.conf
