all:
	docker-compose -f srcs/docker-compose.yaml --env-file srcs/.env build
	docker-compose -f srcs/docker-compose.yaml --env-file srcs/.env up -d

up:
	docker-compose -f srcs/docker-compose.yaml --env-file srcs/.env up -d

down:
	docker-compose -f srcs/docker-compose.yaml down

ps:
	docker-compose -f srcs/docker-compose.yaml ps
clean:
	docker image rm srcs_nginx
	docker image rm srcs_wordpress
	docker image rm srcs_mariadb