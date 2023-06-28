FROM debian:buster


RUN apt-get update -y 

RUN apt-get install php-fpm php-mysql -y

RUN apt-get install curl -y

ENV DB1_NAME=OMIDB
ENV DB1_USER=OMII
ENV DB1_PWD=0000

COPY /tools/script.sh /
COPY /tools/wp-config.php /


RUN chmod +x /script.sh


CMD [ "/script.sh" ]

