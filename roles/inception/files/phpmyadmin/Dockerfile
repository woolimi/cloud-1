# Start from the Alpine base image
FROM alpine:3.14

# Expose the port that phpMyAdmin will run on
EXPOSE 9090

# Install necessary packages, including PHP, PHP extensions, and phpMyAdmin dependencies
RUN apk update && apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
    php7-json php7-curl php7-zlib php7-xml php7-mbstring php7-tokenizer \
    php7-session php7-ctype php7-dom php7-phar php7-pdo php7-pdo_mysql \
    curl tar bash

# Create directory for phpMyAdmin installation
RUN mkdir -p /var/www/html/phpmyadmin

# Download phpMyAdmin
RUN curl -o /phpmyadmin.tar.gz https://files.phpmyadmin.net/phpMyAdmin/latest/phpMyAdmin-latest-all-languages.tar.gz && \
    tar -xzf /phpmyadmin.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin && \
    rm /phpmyadmin.tar.gz

# Copy custom php-fpm configuration (if needed)
# COPY ./www.conf /etc/php7/php-fpm.d/www.conf

# You can configure phpMyAdmin by providing a custom config file (optional)
# COPY ./config.inc.php /var/www/html/phpmyadmin/config.inc.php

# Copy initialization script (to start services and configurations)
COPY ./init.sh /init.sh

# Ensure init.sh has execution permissions
RUN chmod +x /init.sh

# Set entry point to the init script
CMD sh /init.sh
