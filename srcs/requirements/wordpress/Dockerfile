FROM alpine:3.12

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache \
	php			\
	php-curl	\
	php-fpm		\
	php-gd		\
	php-intl	\
	php-json	\
	php-mbstring \
	php-mysqli	\
	php-phar	\
	php-soap	\
	php-xml		\
	php-xmlrpc	\
	php-zip		\
	mariadb
 
EXPOSE 9000

COPY ./conf/php-fpm.conf /etc/php7/
COPY ./conf/www.conf /var/www/

#install wp-cli
COPY ./tools/wp-cli.phar /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

#Add wordpress
RUN mkdir var/www/html \
	&& cd var/www/html \
	&& wp core download 

# Add wp-config.php
COPY ./conf/wp-config.php /var/www/html/wp-config.php

ADD ./tools/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 755 /usr/local/bin/entrypoint.sh

CMD ["./usr/local/bin/entrypoint.sh"]
