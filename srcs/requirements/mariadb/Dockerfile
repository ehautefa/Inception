FROM alpine:3.12

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache \
	mariadb \
	mariadb-client \
	&& mysql_install_db --datadir="/var/lib/mysql"

COPY tools/mariadb.cnf etc/my.cnf.d/mariadb-server.cnf

COPY tools/wordpress.sql .

RUN chown -R mysql /var/lib/mysql

RUN mkdir var/log/mysql

EXPOSE 3306

# ENV MYSQL_ROOT_PASSWORD "pass"
# ENV MYSQL_USER "ehautefa"
# ENV MYSQL_PASSWORD "pass2"

VOLUME ["/var/lib/mysql"]

COPY ./tools/run.sh /usr/local/bin/run.sh
RUN chmod 755 /usr/local/bin/run.sh

# CMD ["mysqld_safe"]
CMD ["/usr/local/bin/run.sh"]