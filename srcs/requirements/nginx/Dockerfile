FROM debian:buster
LABEL info="by levensta for services"
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y nginx openssl net-tools

EXPOSE 80 443

COPY ./tools/* /server/

CMD ["/server/script.sh"]

# docker build -t nginx_image ./srcs/requirements/nginx/
# docker run -it -p 80:80 -p 443:443 --name nginx_container --rm nginx_image