FROM alpine:3.19

RUN apk update && apk upgrade
RUN apk add nginx bash

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./init.sh /init.sh
COPY ./privkey.pem /etc/nginx/ssl/privkey.pem
COPY ./fullchain.pem /etc/nginx/ssl/fullchain.pem

CMD bash /init.sh