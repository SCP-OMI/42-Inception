#!/bin/bash

echo "CREATE DATABASE IF NOT EXISTS $DB ;" >> db1.sql
echo "CREATE USER IF NOT EXISTS '$USER'@'%' IDENTIFIED BY '$PWD' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $DB.* TO '$USER'@'%' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql
