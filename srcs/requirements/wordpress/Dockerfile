FROM alpine:3.13.4

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache	\
	php					\
	php-fpm

EXPOSE 9000

RUN adduser -S nginx && addgroup -S nginx

#CONF
RUN mkdir /var/log/php-fpm && touch /var/log/php-fpm/error.log
COPY ./conf/php-fpm.conf /etc/php7/php-fpm.conf
COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf

# DEBUG FILES
RUN mkdir /srcs

RUN chown -R nginx:nginx /srcs
COPY ./tools/index.php /srcs/index.php

ENTRYPOINT ["php-fpm7", "-F"]