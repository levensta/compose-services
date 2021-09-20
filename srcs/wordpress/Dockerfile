FROM alpine:3.12
LABEL info="by levensta for services"
RUN apk update && apk upgrade && apk add curl wget php7 php7-fpm php7-json php7-gd php7-curl php7-mysqli \
php7-zlib php7-opcache php7-session php7-common php7-iconv php7-xml php7-imap php7-cgi php7-pdo php7-pdo_mysql \
php7-soap php7-posix php7-gettext php7-ldap php7-ctype php7-dom php7-mbstring php7-phar --repository http://dl-cdn.alpinelinux.org/alpine/edge/community

EXPOSE 5050

COPY ./tools/* /server/
ADD https://wordpress.org/latest.tar.gz /

CMD ["/server/script.sh"]

# docker build -t wordpress_image ./srcs/wordpress/
# docker run -it -p 5000:5000 --name wordpress_container --rm wordpress_image