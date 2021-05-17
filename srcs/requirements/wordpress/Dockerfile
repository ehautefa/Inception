FROM debian:buster

LABEL maintainer="ehautefa@student.42.fr"

RUN apt update -y \
    && apt upgrade -y \
	&& apt install -y php-fpm \
    && apt clean -y
 
EXPOSE 9000

# config nginx
# RUN mkdir /var/www/html \
# 	&& chown -R $USER:$USER /var/www/html
# COPY ./conf/nginx.conf /etc/nginx/sites-available/0wordpress
# RUN ln -s /etc/nginx/sites-available/0wordpress /etc/nginx/sites-enabled/

#install wp-cli
COPY ./tools/wp-cli.phar /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

#Add wordpress
ADD ./tools/wordpress-5.7.2-fr_FR.tar.gz ./tmp/wordpress
# ADD ./tools/wordpress.sql ./tmp/wordpress.sql
