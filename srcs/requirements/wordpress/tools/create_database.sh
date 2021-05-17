#!/bin/bash

../../etc/init.d/nginx start
../../etc/init.d/mysql start
../../etc/init.d/php7.3-fpm start 

sh /usr/local/bin/auto_index.sh

echo "CREATE DATABASE $WORDPRESS_DB_NAME DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mariadb -u root
echo "GRANT ALL ON $WORDPRESS_DB_NAME.* TO 'root' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;" | mariadb -u root 
echo "FLUSH PRIVILEGES;" | mariadb -u root  
mysql -u root $WORDPRESS_DB_NAME < tmp/wordpress.sql

wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --locale=ro_RO --allow-root --path="./tmp/wordpress"
chmod 644 ./tmp/wordpress/wp-config.php
wp core install --allow-root --path="./tmp/wordpress" --url=localhost --title="Miette" --admin_name=$WORDPRESS_DB_USER --admin_password=$WORDPRESS_DB_PASSWORD  --admin_email=ehautefa@student.42.fr
cp -a /tmp/wordpress/. /var/www/wordpress
chown -R www-data:www-data /var/www/wordpress
