FROM docker.io/alpine:3.17

RUN apk add aws-cli
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add kubectl
