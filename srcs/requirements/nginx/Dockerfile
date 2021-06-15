FROM alpine:3.13.4

LABEL maintainer="ehautefa@student.42.fr"

RUN apk add --no-cache \
	nginx
 
RUN mkdir /run/nginx \
	&& chown -R nginx:nginx /run/nginx

COPY ./conf/default.conf /etc/nginx/http.d/default.conf

RUN mkdir /srcs
RUN chown -R nginx:nginx /srcs

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

