FROM alpine:3.12

LABEL maintainer="ehautefa@student.42.fr"

RUN 	apt update -y \
		&& apt install -y mariadb \
		&& apt clean -y

EXPOSE 9000