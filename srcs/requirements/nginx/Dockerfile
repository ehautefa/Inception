FROM alpine:3.12

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache \
	nginx
 
EXPOSE 80

RUN mkdir /run/nginx

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

# RUN ln -s /etc/nginx/sites-available/0wordpress /etc/nginx/sites-enabled/

ENTRYPOINT ["nginx", "-g", "daemon off;"]

