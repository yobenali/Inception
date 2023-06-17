#!/bin/bash

# Variables
NEW_USER="yobenali"
NEW_USER_PASSWORD="qwerty"
NEW_DATABASE="my_database"

# Create SQL script
SCRIPT=$(cat <<EOT
CREATE USER '${NEW_USER}'@'localhost' IDENTIFIED BY '${NEW_USER_PASSWORD}';
CREATE DATABASE ${NEW_DATABASE};
GRANT ALL PRIVILEGES ON ${NEW_DATABASE}.* TO '${NEW_USER}'@'localhost';
FLUSH PRIVILEGES;
EOT
)

# Execute SQL script
echo "${SCRIPT}" | mysql -u root

