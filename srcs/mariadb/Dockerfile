FROM alpine:3.12
LABEL info="by levensta for services"
RUN apk update && apk upgrade && apk add bash mariadb mariadb-client openrc

EXPOSE 3306

COPY ./tools/* /server/

# VOLUME [ "/var/lib/mysql" ]

CMD bash /server/script.sh

# docker build -t mariadb_image ./srcs/mariadb/
# docker run -it -p 3306:3306 --name mariadb_container --rm mariadb_image