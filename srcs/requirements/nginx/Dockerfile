FROM debian:buster

LABEL maintainer="ehautefa@student.42.fr"

RUN 	apt update -y \
		&& apt install -y nginx \
		&& apt clean -y

EXPOSE 9000

COPY ./conf/nginx.conf /etc/nginx/sites-available/0wordpress
RUN ln -s /etc/nginx/sites-available/0wordpress /etc/nginx/sites-enabled/

# run

