before:
	sudo mkdir -p ~/ehautefa
	sudo mkdir -p ~/ehautefa/data
	docker-compose build
	docker-compose run --no-deps --rm application composer install

start:
	cd srcs && docker-compose build
	cd srcs && docker-compose up

stop:
	cd srcs && docker-compose down --rmi all

.PHONY: before start stop

# https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a
# https://write.vanoix.com/emeric/makefile-et-docker-en-dev