#!/bin/bash
../../etc/init.d/mysql start
echo "CREATE DATABASE $MYSQL_DATABASE DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mariadb -u root
echo "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mariadb -u root 
echo "FLUSH PRIVILEGES;" | mariadb -u root
tail -f var/log/mysql/error.log
