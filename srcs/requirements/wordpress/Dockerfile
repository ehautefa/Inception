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
	php-zip
 
EXPOSE 9000

COPY ./conf/php-fpm.conf /etc/php7/
COPY ./conf/www.conf /var/www/

#install wp-cli
COPY ./tools/wp-cli.phar /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

#Add wordpress
ADD ./tools/wordpress-5.7.2-fr_FR.tar.gz ./tmp
# ADD ./tools/wordpress.sql ./tmp/wordpress.sql

# create sql database
# ADD ./tools/create_database.sh /usr/local/bin/create_database.sh
# RUN chmod 755 /usr/local/bin/create_database.sh

# CMD ["./usr/local/bin/create_database.sh"]
ENTRYPOINT ["php-fpm7", "-F"]