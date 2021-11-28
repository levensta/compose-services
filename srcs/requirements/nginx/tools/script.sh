#!/bin/bash

mv /server/my_nginx.conf /etc/nginx/sites-available/default
openssl req -x509 -sha256 -nodes -days 421 -newkey rsa:2048 -keyout /etc/ssl/private.key -out /etc/ssl/public.crt \
-subj "/C=RU/ST=Tatarstan/L=Kazan/O=Example-Certificates/CN=localhost.local"

chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*

nginx -g 'daemon off;'
# bash