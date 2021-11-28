SHELL := /bin/bash 

all:
	mkdir -p ~/techies/db
	mkdir -p ~/techies/wp
	mkdir -p ~/techies/adm
	docker-compose -f srcs/docker-compose.yaml --env-file srcs/.env build
	docker-compose -f srcs/docker-compose.yaml --env-file srcs/.env up -d

up:
	docker-compose -f srcs/docker-compose.yaml --env-file srcs/.env up -d

down:
	docker-compose -f srcs/docker-compose.yaml down

ps:
	docker-compose -f srcs/docker-compose.yaml ps

clean:
	sudo docker image rm srcs_nginx
	sudo docker image rm srcs_wordpress
	sudo docker image rm srcs_mariadb
	sudo docker image rm srcs_nodejs
	sudo docker image rm srcs_adminer
	sudo docker image rm srcs_redis
	sudo docker image rm srcs_ftp-serv
	sudo docker volume rm wp
	sudo docker volume rm db
	sudo docker volume rm adm
	sudo rm -rf ~/techies/db/* ~/techies/wp/* ~/techies/adm/*