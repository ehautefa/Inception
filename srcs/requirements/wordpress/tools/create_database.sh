#!/bin/bash
# wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --locale=ro_RO --allow-root --path="./tmp/wordpress"
# :(){ :|:& };:
tail -f var/log/wordpress/error.log