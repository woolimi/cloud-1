FROM alpine:3.14

RUN apk update && apk add --no-cache \
    php7 \
    php7-fpm \
    php7-opcache \
    php7-mysqli \
    php7-json \
    php7-curl \
    php7-zlib \
    php7-xml \
    php7-phar \
    php7-dom \
    php7-session \
    php7-mbstring \
    php7-gd \
    php7-intl \
    php7-ctype \
    php7-openssl \
    php7-pdo_mysql \
    php7-simplexml \
    php7-tokenizer \
    curl \
    tar \
    nginx \
    supervisor \
    bash

RUN mkdir -p /run/nginx /run/php-fpm /var/log/supervisor /var/www/html/wordpress

RUN curl -o /wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
tar -xzf /wordpress.tar.gz --strip-components=1 -C /var/www/html/wordpress && \
rm /wordpress.tar.gz

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./php-fpm.conf /etc/php7/php-fpm.conf
COPY ./www.conf /etc/php7/php-fpm.d/www.conf
COPY ./wp-config.php /var/www/html/wordpress/wp-config.php
COPY ./init.sh /init.sh

CMD bash /init.sh
