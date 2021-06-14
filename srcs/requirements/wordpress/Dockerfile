FROM alpine:3.12

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache	\
	php7				\
	php7-fpm			\
	php7-phar			\
	php7-json			\
	php7-mysqli			\
	php7-curl			\
	php7-iconv			\
	php7-pecl-mailparse

EXPOSE 9000

RUN addgroup -S nginx \
 && adduser -S -D -s /sbin/nologin -h /var/www -G nginx nginx

#CONF
RUN mkdir /var/log/php-fpm && touch /var/log/php-fpm/error.log
COPY ./conf/php-fpm.conf /etc/php7/
COPY ./conf/www.conf /etc/php7/php-fpm.d/
COPY ./conf/php.ini /etc/php7/

#install wp-cli
COPY ./tools/wp-cli.phar /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

# Add wordpress
RUN mkdir var/www/html \
	&& cd var/www/html \
	&& wp core download

# DEBUG FILES
COPY ./tools/index.html/ /var/www/html/
RUN	rm /var/www/html/index.php 
COPY ./tools/index.php/ /var/www/html/index.php 

# Add wp-config.php
COPY ./conf/wp-config.php /var/www/html/wp-config.php
RUN chmod 644 /var/www/html/wp-config.php

ADD ./tools/entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]