FROM alpine:3.12

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache \
	mariadb \
	mariadb-client \
	&& mysql_install_db --datadir="/var/lib/mysql"

EXPOSE 3306

COPY tools/wordpress.sql /tmp/
RUN chown -R mysql /var/lib/mysql
RUN mkdir var/log/mysql
RUN mkdir usr/local/bin/data
RUN touch /var/log/mysql/mariadb.err

COPY conf/mariadb.cnf etc/my.cnf.d/mariadb-server.cnf
COPY conf/my.cnf etc/my.cnf

COPY ./tools/entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]