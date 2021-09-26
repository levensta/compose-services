#!/bin/bash

mkdir -p /var/www/html/wordpress /run/php

tar -xzf latest.tar.gz -C /var/www/html/ && rm -rf latest.tar.gz
chown -R www-data:www-data /var/www/html/wordpress
chmod -R 775 /var/www/html/wordpress 

sed -i -e "s/\${DB_NAME}/${DB_NAME}/g" /server/wp-config.php
sed -i -e "s/\${DB_USER}/${DB_USER}/g" /server/wp-config.php
sed -i -e "s/\${DB_PASSWORD}/${DB_PASSWORD}/g" /server/wp-config.php
sed -i -e "s/\${DB_HOST}/${DB_HOST}/g" /server/wp-config.php
rm -rf /var/www/html/wordpress/wp-config-sample.php
mv /server/wp-config.php /var/www/html/wordpress/

mv /server/fpm.conf /etc/php/7.3/fpm/pool.d/www.conf
# sed -ie "s#/run/php/php7.3-fpm.sock#9000#" /etc/php/7.3/fpm/pool.d/www.conf
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
sleep 10
php wp-cli.phar --info
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
cd /var/www/html/wordpress
wp core install --allow-root --url=${CUSTOM_URL} --admin_password=${WP_ADM_PASS} \
--admin_email=${ADM_EMAIL} --title="21cluster" --admin_user=${WP_ADMIN}
wp user create ${WP_USER} ${USR_EMAIL} --allow-root --role=author  --user_pass=${WP_USR_PASS}
# wp plugin install really-simple-ssl --allow-root
# wp plugin activate really-simple-ssl --allow-root

/usr/sbin/php-fpm7.3 --nodaemonize

# bash