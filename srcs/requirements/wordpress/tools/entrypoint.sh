#!/bin/sh
echo "Wait for database"
sleep 10
wp core install --url="https://localhost" --title="INCEPTION" --admin_name=elise --admin_email=ehautefa@student.42.fr --admin_password=pass --path=/srcs/
echo "Starting php-fpm7 ..."
php-fpm7 -F