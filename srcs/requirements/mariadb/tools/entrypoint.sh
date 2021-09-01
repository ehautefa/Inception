#!/bin/sh
compteur=0
mysqld_safe --datadir="/var/lib/mysql" &
while (( !(mysqladmin ping 2> /dev/null) ))
do
   sleep 3
   compteur=$((compteur+1))
   if [ "$compteur" -gt 5 ]
   then
      echo "ERROR: can't connect to mysql"
      exit 0
   fi
   echo "waiting for mysql ..."
done
echo "exit" | mariadb > /dev/null
if [ 0 -ne $? ] ; then
   echo "Change password --->"
   mysqladmin -u root -h localhost -p$MYSQL_ROOT_PASSWORD password ''
   mariadb -u root
   echo "<--- Password changed"
fi
echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" | mariadb -u root
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mariadb -u root
echo "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mariadb -u root  
echo "FLUSH PRIVILEGES;" | mariadb -u root
echo "Change password --->"
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" | mariadb -u root
echo "<--- Password changed"
mysqladmin -u root -h localhost -p$MYSQL_ROOT_PASSWORD shutdown
mysqld_safe --datadir="/var/lib/mysql"
