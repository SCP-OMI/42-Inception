#!/bin/bash

echo "CREATE DATABASE IF NOT EXISTS $DB1_NAME ;" >> /etc/mysql/db1.sql
echo "CREATE USER IF NOT EXISTS '$DB1_USER'@'%' IDENTIFIED BY '$DB1_PWD' ;" >> /etc/mysql/db1.sql
echo "GRANT ALL PRIVILEGES ON $DB1_NAME.* TO '$DB1_USER'@'%' ;" >> /etc/mysql/db1.sql
echo "FLUSH PRIVILEGES;" >> /etc/mysql/db1.sql
