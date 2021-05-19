FROM debian:buster

LABEL maintainer="ehautefa@student.42.fr"

RUN 	apt update -q -y \
		&& apt install -q -y mariadb-server mariadb-client \
		&& apt autoclean -q -y

COPY tools/wordpress.sql /
COPY tools/50-server.cnf etc/mysql/mariadb.conf.d/

EXPOSE 3306

# init
ADD ./tools/init.sh /usr/local/bin/init.sh
RUN chmod 755 /usr/local/bin/init.sh

CMD ["./usr/local/bin/init.sh"]