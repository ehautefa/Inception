before:
	sudo mkdir -p ~/ehautefa
	sudo mkdir -p ~/ehautefa/data
	docker-compose build
	docker-compose run --no-deps --rm application composer install

start:
	docker-compose up -d

stop:
	docker-compose down

.PHONY: before start stop

# https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a
# https://write.vanoix.com/emeric/makefile-et-docker-en-dev