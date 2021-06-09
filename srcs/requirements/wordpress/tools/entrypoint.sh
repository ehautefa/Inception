#!/bin/sh
sed -i "s/WORDPRESS_DB_NAME/$WORDPRESS_DB_NAME/g" /var/www/html/wp-config.php
sed -i "s/WORDPRESS_DB_USER/$WORDPRESS_DB_USER/g" /var/www/html/wp-config.php
sed -i "s/WORDPRESS_DB_PASSWORD/$WORDPRESS_DB_PASSWORD/g" /var/www/html/wp-config.php
sed -i "s/WORDPRESS_DB_HOST/$WORDPRESS_DB_HOST/g" /var/www/html/wp-config.php
sleep 10
wp core install --url="http://ehautefa.42.fr/" --title="INCEPTION" --admin_name=elise --admin_email=ehautefa@student.42.fr --admin_password=pass --path=/var/www/html
php -S 0.0.0.0:9000 -t var/www/html