wp core download --path=/var/www/html/wordpress --allow-root

chmod -R 755 /var/www/html/wordpress

chown -R www-data:www-data /var/www/html/wordpress

sed -i 's/\/run\/php\/php7\.3-fpm\.sock/wordpress:9000/g' /etc/php/7.3/fpm/pool.d/www.conf

wp config create --dbname=my-database --dbuser=yobenali --dbpass=qwerty --dbhost=localhost

wp core install --url=${DOMAIN_NAME} --title=inception --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PW} --admin_email=${WP_ADMIN_EMAIL} --allow-root

wp user create ${WP_USER} ${WP_EMAIL} --role=author --user_pass=${WP_PW} --allow-root

wp rewrite structure '/%postname%/' --path=/var/www/html/wordpress --allow-root

php-fpm7.3 -R -F