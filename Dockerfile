FROM alpine:latest
MAINTAINER jpelzer <jpelzer@gmail.com>

ENV LISTEN_IP 0.0.0.0
ENV LISTEN_PORT 443
ENV SSH_HOST localhost
ENV SSH_PORT 22
ENV HTTPS_HOST localhost
ENV HTTPS_PORT 443

RUN apk update && \
    apk add --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ sslh && \
    rm -rf /var/cache/apk/*

ADD entry.sh /usr/local/bin/entry.sh
RUN chmod +x /usr/local/bin/entry.sh

ENTRYPOINT ["/usr/local/bin/entry.sh"]
