FROM debian:buster


RUN apt update -y 

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y


COPY ./config/wp-script.sh /
COPY ./config/wp-config.php /

RUN chmod +x wp-script.sh
CMD [ "/wp-script.sh" ]
