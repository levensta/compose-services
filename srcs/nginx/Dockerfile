FROM alpine:3.12
LABEL info="by levensta for services"
RUN apk update && apk upgrade && apk add nginx openssl net-tools

EXPOSE 80 443

COPY ./tools/* /server/

CMD ["/server/script.sh"]

# docker build -t nginx_image ./srcs/nginx/
# docker run -it -p 80:80 -p 443:443 --name nginx_container --rm nginx_image