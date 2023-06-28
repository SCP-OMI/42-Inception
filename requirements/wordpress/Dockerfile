FROM debian:buster


RUN apt-get update -y 

RUN apt-get install php-fpm php-mysql -y

RUN apt-get install curl -y

ENV WP_TITLE=OMIHUB
ENV WP_ADMIN_USR=OMI
ENV WP_ADMIN_PWD=5326
ENV WP_ADMIN_EMAIL=mehdicharouh@gmail.com
ENV WP_USR=mcharouh
ENV WP_EMAIL=mehdinanya@gmail.com
ENV WP_PWD=5326
ENV DB_NAME=OMIDB
ENV DB_USER=OMII
ENV DB_PWD=0000

COPY /tools/script.sh /
COPY /tools/wp-config.php /


RUN chmod +x /script.sh


CMD [ "/script.sh" ]

