FROM alpine:3.12

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache \
	nginx
 
EXPOSE 443

RUN mkdir /run/nginx

COPY ./conf/nginx.conf /etc/nginx/nginx.conf


# COPY ./conf/nginx.conf /etc/nginx/nginx.conf
# COPY ./conf/conf.d /etc/nginx/conf.d

# config nginx
# RUN chown -R nginx:nginx /var/www/html
# COPY ./conf/conf.d/default.conf /etc/nginx/sites-available/
# RUN ln -s /etc/nginx/sites-available/0wordpress /etc/nginx/sites-enabled/

COPY ./tools/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 755 /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# CMD ["nginx", "-g", "daemon off;"]

