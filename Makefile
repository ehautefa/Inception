NAME = inception

${NAME}:
	mkdir -p /home/ehautefa/data/wordpress
	mkdir -p /home/ehautefa/data/mysql
	cd srcs && docker-compose build
	cd srcs && docker-compose up

all:	${NAME}

clean:
	cd srcs && docker-compose down --rmi all
	docker system prune --volumes

fclean:	clean
	sudo rm -rf /home/ehautefa/data/wordpress/*
	sudo rm -rf /home/ehautefa/data/mysql/*

re:		fclean all

.PHONY: all fclean clean re

# https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a
# https://write.vanoix.com/emeric/makefile-et-docker-en-dev