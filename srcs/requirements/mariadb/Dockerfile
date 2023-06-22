FROM debian:buster

# Install necessary packages
RUN apt-get update && apt-get install -y mariadb-server
RUN sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
ARG  MYSQL_ROOT_PASSWORD MYSQL_DATABASE MYSQL_USER MYSQL_PASSWORD
COPY tools/database.sh /
RUN chmod +x database.sh
RUN service mysql start && ./database.sh

# Expose the default MySQL port
EXPOSE 3306

# Start MariaDB service
CMD mysqld