#!/bin/sh
echo "Wait for database"
sleep 10
# wp core install --url="http://ehautefa.42.fr/" --title="INCEPTION" --admin_name=elise --admin_email=ehautefa@student.42.fr --admin_password=pass --path=/var/www/html
php -S 0.0.0.0:9000 -t /var/www/html
echo "Starting php-fpm7 ..."
# tail -f /var/log/php-fpm7/error.log
# php-fpm7 -F