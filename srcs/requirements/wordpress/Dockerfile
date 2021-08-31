FROM alpine:3.13.4

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache	\
	php					\
	php-fpm				\
	php-phar			\
	php-json			\
	php-mysqli			\
	php-curl			\
	mariadb-client 		\
	php-iconv

EXPOSE 9000

RUN adduser -S nginx && addgroup -S nginx

#CONF
RUN mkdir /var/log/php-fpm && touch /var/log/php-fpm/error.log
COPY ./conf/php-fpm.conf /etc/php7/php-fpm.conf
COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf

#install wp-cli
COPY ./tools/wp-cli.phar /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

#volume
RUN mkdir /srcs
RUN chown -R nginx:nginx /srcs
RUN chmod -R 755 /srcs
RUN wp core download --path="/srcs/"

#wp-config.php
COPY ./conf/wp-config.php /srcs/wp-config.php
RUN chmod 644 /srcs/wp-config.php

ADD ./tools/entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]