#!/bin/bash
sleep 3
# chmod -R 755 /var/www/html/wordpress/*

chown -R www-data:www-data /var/www/html/wordpress/*

# sed -i 's/\/run\/php\/php7\.3-fpm\.sock/wordpress:9000/g' /etc/php/7.3/fpm/pool.d/www.conf

cd /var/www/html/wordpress

rm -rf wp-config.php
wp config create --allow-root --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb

wp core install --url=${DOMAIN_NAME} --title=inception --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PW} --admin_email=${WP_ADMIN_EMAIL} --allow-root

wp user create ${WP_USER} ${WP_EMAIL} --role=author --user_pass=${WP_PW} --role=author --allow-root

exec php-fpm7.3 -F -R