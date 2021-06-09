FROM alpine:3.12

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache \
	nginx
 
EXPOSE 80

RUN mkdir /run/nginx

COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/conf.d/default.conf /etc/nginx/conf.d/default.conf

# config nginx
# RUN chown -R nginx:nginx /var/www/html
# COPY ./conf/conf.d/default.conf /etc/nginx/sites-available/
# RUN ln -s /etc/nginx/sites-available/0wordpress /etc/nginx/sites-enabled/


CMD ["nginx", "-g", "daemon off;"]

