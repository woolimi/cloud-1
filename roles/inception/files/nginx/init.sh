#!/bin/bash
DOMAIN=knowledge-archive.xyz
EMAIL=woolimi91@naver.com

nginx
certbot certonly --webroot --webroot-path /var/www/html/ -d $DOMAIN -d www.$DOMAIN --non-interactive --agree-tos --email $EMAIL

if [ $? -eq 0 ]; then
    echo "SSL Certificates successfully issued!"
else
    echo "SSL Certificate issuing failed!"
    exit 1
fi
nginx -s reload
nginx -g 'daemon off;'
