FROM alpine:3.12

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache \
	nginx
 
EXPOSE 80

RUN mkdir /run/nginx

COPY ./conf/nginx.bk.conf /etc/nginx/nginx.conf
# COPY ./conf/conf.d/default.conf /etc/nginx/conf.d/default.conf


# config nginx
RUN mkdir /srcs/
RUN adduser -D -g 'www' www
RUN chown -R www:www /srcs/ \
	&& chown -R www:www /var/lib/nginx/ \
	&& chmod -R 755 /srcs/

# COPY ./conf/conf.d/default.conf /etc/nginx/sites-available/
# RUN ln -s /etc/nginx/sites-available/0wordpress /etc/nginx/sites-enabled/

CMD ["nginx", "-g", "daemon off;"]

