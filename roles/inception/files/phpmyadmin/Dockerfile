# Start from the Alpine base image
FROM alpine:3.14

# Install necessary packages, including PHP, PHP extensions, and phpMyAdmin dependencies
RUN apk update && apk add nginx php7 php7-fpm php7-opcache php7-gd php7-mysqli \
    php7-json php7-curl php7-zlib php7-xml php7-mbstring php7-tokenizer \
    php7-session php7-ctype php7-dom php7-phar php7-pdo php7-pdo_mysql \
    curl tar bash

RUN adduser -S www-data -G www-data

# Create directory for phpMyAdmin installation
RUN mkdir -p /var/www/html/phpmyadmin

# Download phpMyAdmin
RUN curl -o /phpmyadmin.tar.gz https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-all-languages.tar.gz && \
    tar -xzf /phpmyadmin.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin && \
    rm /phpmyadmin.tar.gz

# Copy initialization script (to start services and configurations)
COPY ./init.sh /init.sh
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./php-fpm.conf /etc/php7/php-fpm.d/www.conf
COPY ./config.inc.php /var/www/html/phpmyadmin/config.inc.php

# Ensure init.sh has execution permissions
RUN chmod +x /init.sh

# Set entry point to the init script
CMD bash /init.sh
