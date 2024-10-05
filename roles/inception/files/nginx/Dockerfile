FROM alpine:3.14
EXPOSE 443

RUN apk update && apk upgrade
RUN apk add nginx openssl

RUN mkdir -p /var/www/html
RUN mkdir -p /etc/nginx/ssl

COPY ./nginx.conf /etc/nginx/nginx.conf

# ssl was created in cert task
COPY ./ssl /etc/nginx/ssl

CMD nginx -g 'daemon off;'