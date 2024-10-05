FROM alpine:3.19

RUN apk update && apk upgrade
RUN apk add nginx bash

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./init.sh /init.sh

CMD bash /init.sh