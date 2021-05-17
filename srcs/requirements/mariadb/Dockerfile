FROM debian:buster

LABEL maintainer="ehautefa@student.42.fr"

RUN 	apt update -y \
		&& apt install -y mariadb-server \
		&& apt clean -y

EXPOSE 9000