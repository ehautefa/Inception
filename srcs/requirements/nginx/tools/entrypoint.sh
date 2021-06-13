#!/bin/sh
chown -R nginx:nginx /var/www/html
echo "Permission /var/www/html changed"
nginx -g "daemon on;"
tail -f /var/log/nginx/error.log