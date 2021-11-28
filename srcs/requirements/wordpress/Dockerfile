FROM debian:buster
LABEL info="by levensta for services"
WORKDIR /server
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y curl wget \
bash php7.3 php-mysql php7.3-fpm php-pdo php-gd php-cli php-mbstring php-redis

EXPOSE 5050

COPY ./tools/* ./
ADD https://wordpress.org/latest.tar.gz ./

ENTRYPOINT ["/bin/bash", "script.sh"]

# docker build -t wordpress_image ./srcs/requirements/wordpress/
# docker run -it -p 5000:5000 --name wordpress_container --rm wordpress_image