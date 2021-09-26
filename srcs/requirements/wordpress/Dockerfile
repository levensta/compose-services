FROM debian:buster
LABEL info="by levensta for services"
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y php7.3 php7.3-fpm php7.3-mysql php7.3-curl wget curl bash \
php7.3-gd php7.3-intl php7.3-mbstring php7.3-soap php7.3-xml php7.3-xmlrpc php7.3-zip php7.3-common php7.3-gmp php7.3-cli php7.3-imap

EXPOSE 5050

COPY ./tools/* /server/
ADD https://wordpress.org/latest.tar.gz /

CMD ["/server/script.sh"]

# docker build -t wordpress_image ./srcs/requirements/wordpress/
# docker run -it -p 5000:5000 --name wordpress_container --rm wordpress_image