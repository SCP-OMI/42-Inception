FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y

RUN mkdir -p /etc/mysql/tools

ENV DB1_NAME=OMIDB
ENV DB1_USER=OMII
ENV DB1_PWD=0000

COPY ./tools/setup-mariadb.sh /etc/mysql/tools/
COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /etc/mysql/tools/setup-mariadb.sh
RUN /etc/mysql/tools/setup-mariadb.sh
RUN service mysql start && mysql < /etc/mysql/db1.sql
EXPOSE 3306
CMD ["mysqld"]
