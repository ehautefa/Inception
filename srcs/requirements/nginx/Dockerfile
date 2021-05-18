FROM debian:buster

LABEL maintainer="ehautefa@student.42.fr"

RUN 	apt update -y \
		&& apt install -y nginx \
		&& apt clean -y

# COPY ./conf/nginx.conf /etc/nginx/sites-available/0wordpress
# RUN ln -s /etc/nginx/sites-available/0wordpress /etc/nginx/sites-enabled/

CMD ["nginx", "-g", "daemon off;"]

