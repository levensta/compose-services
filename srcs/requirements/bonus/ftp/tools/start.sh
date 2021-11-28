#!/bin/bash

sed -i -e "s/anonymous_enable=NO/anonymous_enable=YES/g" /etc/vsftpd.conf
echo "anon_root=/var/www/html/wordpress" >> /etc/vsftpd.conf
service vsftpd stop
vsftpd