#!/bin/sh
compteur=0
while [ "$compteur" -lt 10 ]
do
    sleep 1
    compteur=$((compteur+1))
    wp core install --url="https://ehautefa.42.fr" --title="INCEPTION" --admin_name=elise --admin_email=ehautefa@student.42.fr --admin_password=pass --path=/srcs/ 2> /dev/null
    if [ 0 -eq $? ]
    then
        break
    fi
    echo "waiting for mysql ..."
done
if [ "$compteur" -eq 10 ]
then
    echo "ERROR: can't connect to mysql"
    exit 0
fi
echo "Starting php-fpm7 ..."
php-fpm7 -F