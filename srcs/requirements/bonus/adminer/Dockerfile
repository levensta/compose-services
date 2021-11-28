FROM debian:buster
LABEL info="by levensta for services"
WORKDIR /server
RUN apt update && apt upgrade -y && apt install -y vim wget curl php7.3 php-mysql php7.3-cli php7.3-fpm php7.3-opcache php7.3-curl php7.3-mbstring php7.3-zip php7.3-xml \
   && bash /etc/init.d/php7.3-fpm start 

EXPOSE 9000

COPY ./tools ./

ENTRYPOINT ["/bin/bash", "script.sh"]

# docker build -t adminer_image ./srcs/requirements/bonus/adminer/
# docker run -it -p 80:80 -p 443:443 --name adminer_container --rm adminer_image