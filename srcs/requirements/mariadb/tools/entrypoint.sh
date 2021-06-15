#!/bin/sh
mysqld_safe --datadir="/var/lib/mysql" &
while !(mysqladmin ping 2> /dev/null)
do
   sleep 3
   echo "waiting for mysql ..."
done
echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE" | mariadb -u root
echo "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mariadb -u root 
echo "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER_2' IDENTIFIED BY '$MYSQL_PASSWORD_2' WITH GRANT OPTION;" | mariadb -u root 
echo "FLUSH PRIVILEGES;" | mariadb -u root  
mysql -u root $MYSQL_DATABASE < tmp/wordpress.sql
mysqladmin shutdown
mysqld_safe --datadir="/var/lib/mysql"


