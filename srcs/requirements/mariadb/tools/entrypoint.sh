#!/bin/sh
mysqld_safe --datadir="/var/lib/mysql" &
echo ""
ps
echo ""
while !(mysqladmin ping 2> /dev/null)
do
   sleep 3
   echo "waiting for mysql ..."
done
mysqladmin status

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE" | mariadb -u root
echo "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mariadb -u root 
echo "FLUSH PRIVILEGES;" | mariadb -u root  
mysql -u root $MYSQL_DATABASE < tmp/wordpress.sql

echo "SHOW DATABASES;" | mariadb -u root

mysqladmin shutdown
mysqld_safe --datadir="/var/lib/mysql"


