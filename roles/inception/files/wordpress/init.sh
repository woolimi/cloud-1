#!/bin/sh
sed -i "s|WP_DOMAIN|$WP_DOMAIN|" /var/www/html/wordpress/wp-config.php
sed -i "s|WP_DB_PASSWORD|$MYSQL_WP_PASSWORD|" /var/www/html/wordpress/wp-config.php
sed -i "s|HOST|$HOST|" /var/www/html/wordpress/who-am-i.html
sed -i "s|PORT|$PORT|" /etc/nginx/nginx.conf

supervisord -c /etc/supervisord.conf