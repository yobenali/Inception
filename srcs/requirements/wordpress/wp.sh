wp core download --path=/var/www/html/wordpress --allow-root

chown -R www-data:www-data /var/www/html/wordpress

sed -i 's/\/run\/php\/php7\.3-fpm\.sock/wordpress:9000/g' /etc/php/7.3/fpm/pool.d/www.conf


wp core install

php-fpm7.3 -R -F