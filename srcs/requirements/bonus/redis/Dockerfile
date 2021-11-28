FROM debian:buster
LABEL info="by levensta for services"
WORKDIR /server
RUN apt update && apt upgrade -y && apt install -y wget bash curl redis-server

EXPOSE 6379

COPY ./tools ./

ENTRYPOINT ["/bin/bash", "script.sh"]

# docker build -t redis_image ./srcs/requirements/bonus/redis/
# docker run -it -p 6379:6379 --name nodejs_container --rm redis_image