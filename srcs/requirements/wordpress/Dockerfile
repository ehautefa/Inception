FROM alpine:3.12

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache \
	php			\
	php-fpm

EXPOSE 9000

RUN addgroup -S www-data \
 && adduser -S -D -s /sbin/nologin -h /var/www -G www-data www-data \
 && chown -R www-data:www-data /var/www/ \
 && chown -R www-data:www-data /etc/ \
 && chmod 755 -R /etc/

#CONF
RUN touch /var/log/php7/error.log
COPY ./conf/php-fpm.conf /etc/php7/
COPY ./conf/www.conf /etc/php7/php-fpm.d/
COPY ./conf/php.ini /etc/php7/

#install wp-cli
COPY ./tools/wp-cli.phar /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

#Add wordpress
# RUN mkdir var/www
# RUN mkdir var/www/html \
# 	&& cd var/www/html \
# 	&& wp core download

COPY ./tools/index.html/ /var/www/html/

# Add wp-config.php
# COPY ./conf/wp-config.php /var/www/html/wp-config.php
# RUN chmod 644 /var/www/html/wp-config.php

# ADD ./tools/entrypoint.sh /usr/local/bin/entrypoint.sh
# RUN chmod 755 /usr/local/bin/entrypoint.sh

# CMD tail -f /var/log/php7/error.log
CMD ["php7", "-S", "0.0.0.0:9000", "-t", "/var/www/html/"]
# ENTRYPOINT ["./usr/local/bin/entrypoint.sh"]
