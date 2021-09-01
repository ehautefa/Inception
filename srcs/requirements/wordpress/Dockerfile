FROM alpine:3.13.4

LABEL maintainer="ehautefa@student.42.fr"

COPY ./conf/php-fpm.conf /etc/php7/php-fpm.conf
COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf
COPY ./tools/wp-cli.phar /usr/local/bin/wp
ADD ./tools/entrypoint.sh /entrypoint.sh

RUN apk add --no-cache	\
	php					\
	php-fpm				\
	php-phar			\
	php-json			\
	php-mysqli			\
	php-curl			\
	php-gd				\
	mariadb-client 		\
	php-iconv			\
	&& adduser -S nginx && addgroup -S nginx \
	&& mkdir /var/log/php-fpm && touch /var/log/php-fpm/error.log \
	&& chmod +x /usr/local/bin/wp \
	&& mkdir /srcs \
	&& chown -R nginx:nginx /srcs \
	&& chmod -R 755 /srcs \
	&& wp core download --path="/srcs/" \
	&& chmod 755 /entrypoint.sh

COPY ./conf/wp-config.php /srcs/wp-config.php
RUN chmod 644 /srcs/wp-config.php

EXPOSE 9000

ENTRYPOINT ["./entrypoint.sh"]