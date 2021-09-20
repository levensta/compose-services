#!/bin/sh

mkdir -p /run/nginx

mv /server/my_nginx.conf /etc/nginx/conf.d/default.conf
openssl req -x509 -sha256 -nodes -days 421 -newkey rsa:4096 -keyout /etc/ssl/private/private.key -out /etc/ssl/certs/public.crt \
-subj "/C=RU/ST=Tatarstan/L=Kazan/O=Example-Certificates/CN=localhost.local"

nginx -g 'daemon off;'