#!/bin/bash
sed -i "s|PMA_HOST|$PMA_HOST|" /var/www/html/phpmyadmin/config.inc.php
sed -i "s|PMA_USER|$PMA_USER|" /var/www/html/phpmyadmin/config.inc.php
sed -i "s|PMA_PASSWORD|$PMA_PASSWORD|" /var/www/html/phpmyadmin/config.inc.php
sed -i "s|WP_DOMAIN|$WP_DOMAIN|" /var/www/html/phpmyadmin/config.inc.php

# Start PHP-FPM service
php-fpm7 -D

# exec nginx
nginx -g 'daemon off;'