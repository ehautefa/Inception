#!/bin/sh
mysqld_safe --datadir="/var/lib/mysql" &
sleep 10
echo ""
ps
echo ""
while !(mysqladmin ping)
do
   sleep 5
   echo "waiting for mysql ..."
done
mysqladmin status

# echo "CREATE DATABASE $DB_TMP_NAME" | mariadb -u root

mysqladmin shutdown
mysqld_safe --datadir="/var/lib/mysql"


