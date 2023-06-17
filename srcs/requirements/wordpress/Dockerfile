FROM debian:buster

# Update package lists and install necessary packages
RUN apt-get update && apt-get install -y \
    php \
    php-fpm \
    php-mysql \
    mariadb-client \
    curl \
    wget \
    unzip

# Download and install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

# Set up WordPress
WORKDIR /var/www/html

# Download and extract the latest WordPress
RUN wget https://wordpress.org/latest.tar.gz \
    && tar -xf latest.tar.gz \
    && rm latest.tar.gz

# Copy custom php-fpm configuration
#COPY ./php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf

# Expose port 9000 for php-fpm
EXPOSE 9000

# Start php-fpm service
CMD ["php-fpm", "-F"]