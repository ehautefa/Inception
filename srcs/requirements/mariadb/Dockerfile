FROM debian:buster

LABEL maintainer="ehautefa@student.42.fr"

RUN 	apt update -y \
		&& apt install -y mariadb-server \
		&& apt clean -y

EXPOSE 3306

# init
ADD ./tools/init.sh /usr/local/bin/init.sh
RUN chmod 755 /usr/local/bin/init.sh

CMD ["./usr/local/bin/init.sh"]