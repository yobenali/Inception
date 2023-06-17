FROM debian:buster

# Install necessary packages
RUN apt-get update && apt-get install -y mariadb-server

# Configure MariaDB
#RUN sed -i 's/bind-address/#bind-address/g' /etc/mysql/mariadb.conf.d/50-server.cnf
#RUN echo 'skip-networking' >> /etc/mysql/mariadb.conf.d/50-server.cnf

COPY database.sh /
RUN chmod +x database.sh
RUN service mysql start && ./database.sh

# Expose the default MySQL port
EXPOSE 3306

# Start MariaDB service
CMD ["mysqld"]
