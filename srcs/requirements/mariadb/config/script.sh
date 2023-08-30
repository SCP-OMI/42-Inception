#!/bin/bash

service mariadb start

mariadb -u root -e "CREATE DATABASE IF NOT EXISTS ${db1_name};"
mariadb -u root -e "CREATE USER IF NOT EXISTS '${db1_user}'@'%' IDENTIFIED BY '${db1_pwd}';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON ${db1_name}.* TO '${db1_user}'@'%' IDENTIFIED BY '${db1_pwd}';"
# mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${db1_pwd}';"
mariadb -u root -e "FLUSH PRIVILEGES;"

service mariadb stop
mariadbd