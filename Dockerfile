FROM alpine:3.5
LABEL maintainer "sshnaidm <einarum@gmail.com>"
LABEL description "Nginx based on Alpine Linux"

RUN apk add --no-cache nginx  bash

COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY etc/nginx/conf.d/* /etc/nginx/conf.d/
COPY start.sh /start.sh

EXPOSE 80
ENTRYPOINT ["/start.sh", "nginx"]
