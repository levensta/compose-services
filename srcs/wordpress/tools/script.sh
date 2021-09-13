mkdir -p /run/php
mkdir /var/www/

# wget https://wordpress.org/latest.tar.gz #replaced to ADD
tar -xzf latest.tar.gz -C /var/www/
rm -rf latest.tar.gz

chmod -R 744 /var/www/*

sed -i "s/127.0.0.1/0.0.0.0/" /etc/php7/php-fpm.d/www.conf
sed -i -e "s/\${DB_USER}/${DB_USER}/g" /server/wp-config.php
sed -i -e "s/\${DB_PASSWORD}/${DB_PASSWORD}/g" /server/wp-config.php
mv /server/wp-config.php /var/www/wordpress/

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /bin/wp

cd /var/www/wordpress
wp core install --allow-root --url=levensta.42.fr --admin_password=levensta --admin_email=levensta@42.fr --title="born2code" --admin_user=levensta
wp user create user user@42.fr --role=editor --allow-root

/usr/sbin/php-fpm7 -R -F

# bash