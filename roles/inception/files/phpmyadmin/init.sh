#!/bin/bash

# Start PHP-FPM service
php-fpm7 -D

# exec nginx
nginx -g 'daemon off;'