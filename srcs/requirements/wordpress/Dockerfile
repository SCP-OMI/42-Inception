FROM debian:bullseye


RUN apt-get update -y 

RUN apt-get install php-fpm php-mysql mariadb-client -y

RUN apt-get install curl -y


COPY ./config/wp-script.sh /
COPY ./config/wp-config.php /
EXPOSE 9000

RUN chmod +x wp-script.sh
CMD [ "/wp-script.sh" ]
