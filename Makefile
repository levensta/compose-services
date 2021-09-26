SHELL := /bin/bash 

all:
	mkdir -p ~/data/db
	mkdir -p ~/data/wp
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
	sudo docker volume rm wp
	sudo docker volume rm db
	sudo rm -rf ~/data/db/* ~/data/wp/*