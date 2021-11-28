FROM debian:buster
LABEL info="by levensta for services"
WORKDIR /server
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y default-mysql-server procps bash

EXPOSE 3306

COPY ./tools/* ./

ENTRYPOINT ["/bin/bash", "script.sh"]

# docker build -t mariadb_image ./srcs/requirements/mariadb/
# docker run -it -p 3306:3306 --name mariadb_container --rm mariadb_image