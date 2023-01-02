# Inception
Set up a small infrastructure composed of 3 services, mariaDB, wordpress and Nginx with docker compose.

## Subject

You then have to set up:
- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains WordPress + php-fpm (it must be installed and configured) only without nginx.
- A Docker container that contains MariaDB only without nginx.
- A volume that contains your WordPress database.
- A second volume that contains your WordPress website files.
- A docker-network that establishes the connection between your containers.
- Your containers have to restart in case of a crash.

## Skills

This project aims to broaden my knowledge of system administration by using Docker.  
I have virtualized several Docker images and created them in my new personal virtual machine.  
