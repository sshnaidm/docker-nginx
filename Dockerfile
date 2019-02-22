FROM alpine:3.8
LABEL maintainer "sshnaidm <einarum@gmail.com>"
LABEL description "Nginx based on Alpine Linux"

RUN apk add --no-cache nginx  bash

COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY etc/nginx/conf.d/*conf /etc/nginx/conf.d/

EXPOSE 80
CMD ["nginx"]
