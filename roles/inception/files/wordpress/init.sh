#!/bin/sh
sed -i "s|WP_DOMAIN|$WP_DOMAIN|" /var/www/html/wordpress/wp-config.php
sed -i "s|WP_DB_PASSWORD|$MYSQL_WP_PASSWORD|" /var/www/html/wordpress/wp-config.php

php-fpm7 -F -R