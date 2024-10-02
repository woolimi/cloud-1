FROM alpine:3.14
EXPOSE 9000

RUN apk update && apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
    php7-json php7-curl php7-zlib php7-xml php7-mbstring php7-tokenizer \
    php7-session php7-ctype php7-dom php7-phar php7-pdo php7-pdo_mysql \
    curl tar bash

RUN mkdir -p /var/www/html/wordpress

RUN curl -o /wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
    tar -xzf /wordpress.tar.gz --strip-components=1 -C /var/www/html/wordpress && \
    rm /wordpress.tar.gz

COPY ./wp-config.php /var/www/html/wordpress/wp-config.php
COPY ./init.sh /init.sh

CMD sh /init.sh
