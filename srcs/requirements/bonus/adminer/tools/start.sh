#!/bin/bash
mv adminer.php /var/www/html/adminer/adminer.php
mv fpm.conf /etc/php/7.3/fpm/pool.d/www.conf
/usr/sbin/php-fpm7.3 -F