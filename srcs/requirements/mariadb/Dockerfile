FROM alpine:3.13.4

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache \
	mariadb \
	mariadb-client \
	&& mysql_install_db --datadir="/var/lib/mysql" \
	&& chown -R mysql /var/lib/mysql \
	&& mkdir var/log/mysql \
	&& mkdir usr/local/bin/data \
	&& touch /var/log/mysql/mariadb.err

EXPOSE 3306

COPY conf/mariadb.cnf etc/my.cnf.d/mariadb-server.cnf
COPY conf/my.cnf etc/my.cnf
COPY ./tools/entrypoint.sh /entrypoint.sh

RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]