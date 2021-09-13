mv /server/my.cnf /etc/mysql/
chmod 744 /etc/mysql/my.cnf

openrc default
/etc/init.d/mariadb setup
rc-service mariadb start
mysql -e "CREATE DATABASE IF NOT EXISTS data;" -u root
mysql -e "CREATE USER IF NOT EXISTS 'levensta'@'%' IDENTIFIED BY 'born2code';" -u root
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'levensta'@'%' IDENTIFIED BY 'born2code' WITH GRANT OPTION;" -u root
# mysql -e "update mysql.user set plugin='mysql_native_password' where user='root';" -u root --skip-password
mysql -e "FLUSH PRIVILEGES;" -u root

# mysql wordpress -u root < /server/wordpress.sql
rc-service mariadb stop
mysqld --user=root
# /usr/bin/mysqld_safe --datadir='/var/lib/mysql'
# bash