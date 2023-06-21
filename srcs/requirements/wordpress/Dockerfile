FROM debian:buster

# Update package lists and install necessary packages
RUN apt-get update && apt-get install -y curl php php-redis php-fpm php-mysql mariadb-client php-curl php-gd php-json php-mbstring php-xml php-zip sendmail
# Download and install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp

COPY wp.sh /
RUN chmod +x wp.sh 


# Copy custom php-fpm configuration
#COPY ./php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf
   
# Expose port 9000 for php-fpm
EXPOSE 9000

# Start php-fpm service
CMD ./wp.sh