FROM alpine:3.13.4

LABEL maintainer="ehautefa@student.42.fr"

COPY ./conf/default.conf /etc/nginx/http.d/default.conf

RUN apk add --no-cache					\
	nginx								\
	openssl								\
 	&& mkdir /run/nginx 				\
	&& chown -R nginx:nginx /run/nginx 	\
	&& mkdir /srcs						\
	&& chown -R nginx:nginx /srcs		\
	&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.csr \
	-subj '/CN=ehautefa.42.fr'

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

