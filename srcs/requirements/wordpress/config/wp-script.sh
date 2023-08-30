#! /bin/bash

sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf
mkdir -p /run/php

mkdir -p /var/www/html

cd /var/www/html

rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

chmod +x wp-cli.phar 

mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

wp config create --dbname=${db1_name} --dbuser=${db1_user} --dbpass=${db1_pwd} --dbhost=${db_host} --allow-root

# mv /var/www/html/wp-config-sample.php wp-config.php

# mv /wp-config.php /var/www/html/wp-config.php

# sed -i -r "s/db1/$db_name/1"   wp-config.php
# sed -i -r "s/user/$db_user/1"  wp-config.php
# sed -i -r "s/pwd/$db_pwd/1"    wp-config.php

wp core install --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PWD} --admin_email=${WP_ADMIN_MAIL} --skip-email --allow-root

wp user create ${WP_USER} ${WP_EMAIL} --role=author --user_pass=${WP_PWD} --allow-root
# wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PWD --admin_email=$WP_EMAIL --skip-email --allow-root

# wp user create OMI_vuser mehdicharouh@gmail.com --role=author --user_pass=5326 --allow-root

# wp theme install astra --activate --allow-root
# wp theme install astra --activate --allow-root
#wp plugin update --all --allow-root

#This change will make PHP-FPM listen on port 9000 instead of using the Unix socket file for incoming connections


/usr/sbin/php-fpm7.4 -F