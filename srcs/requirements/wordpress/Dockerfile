FROM debian:buster

RUN apt-get install -y php && apt-get install -y php-fpm && apt-get install -y php-mysql && apt-get install -y mariadb-client && apt-get install -y curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# chown -R www-data *
# --allow-root