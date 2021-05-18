FROM debian:buster

LABEL maintainer="ehautefa@student.42.fr"

RUN apt update -y \
    && apt upgrade -y \
	&& apt install -y php-fpm \
    && apt clean -y
 
EXPOSE 9000

#install wp-cli
COPY ./tools/wp-cli.phar /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

#Add wordpress
ADD ./tools/wordpress-5.7.2-fr_FR.tar.gz ./tmp
# ADD ./tools/wordpress.sql ./tmp/wordpress.sql

# create sql database
ADD ./tools/create_database.sh /usr/local/bin/create_database.sh
RUN chmod 755 /usr/local/bin/create_database.sh

CMD ["./usr/local/bin/create_database.sh"]