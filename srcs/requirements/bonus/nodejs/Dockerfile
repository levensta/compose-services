FROM debian:buster
LABEL info="by levensta for services"
WORKDIR /server
RUN apt update && apt upgrade -y && apt install -y vim wget bash curl \
&& curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
 && apt-get install -y nodejs git

EXPOSE 3000

COPY ./tools ./

ENTRYPOINT ["/bin/bash", "script.sh"]

# docker build -t nodejs_image ./srcs/requirements/bonus/nodejs/
# docker run -it -p 3000:3000 --name nodejs_container --rm nodejs_image