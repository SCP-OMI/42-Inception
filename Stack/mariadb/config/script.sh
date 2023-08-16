#!/bin/bash
sleep 5
service mysql start

#Create a database in case it didn't exist (which is the case at 1st)
echo "CREATE DATABASE IF NOT EXISTS $db1_name ;" > db1.sql
#Create a user profile to access the database with
echo "CREATE USER IF NOT EXISTS '$db1_user'@'%' IDENTIFIED BY '$db1_pwd' ;" >> db1.sql
#Grants all needed privilges needed for the database
echo "GRANT ALL PRIVILEGES ON $db1_name.* TO '$db1_user'@'%' ;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql
#Source, but better
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql
#Stop the mariadb process outiside of the docker env
kill $(cat /var/run/mysqld/mysqld.pid)

mysqld
