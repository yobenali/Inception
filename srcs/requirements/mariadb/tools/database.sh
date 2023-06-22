#!/bin/bash

# Variables
# NEW_USER="yobenali"
# NEW_USER_PASSWORD="qwerty"
# NEW_DATABASE="my_database"

# Create SQL script
SCRIPT=$(cat <<EOT
CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
CREATE DATABASE ${MYSQL_DATABASE};
GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';
FLUSH PRIVILEGES;
EOT
)

# Execute SQL script
echo "${SCRIPT}" | mysql -u root

