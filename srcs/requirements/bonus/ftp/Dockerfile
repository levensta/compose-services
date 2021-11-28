FROM debian:buster
LABEL info="by levensta for services"
WORKDIR /server
RUN apt update && apt upgrade -y && apt install -y wget bash curl vsftpd

EXPOSE 20 21

COPY ./tools ./

ENTRYPOINT ["/bin/bash", "script.sh"]

# docker build -t ftp_image ./srcs/requirements/bonus/ftp/
# docker run -it -p 80:80 -p 443:443 --name ftp_container --rm ftp_image