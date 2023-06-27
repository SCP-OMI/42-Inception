FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y

RUN mkdir /etc/mysql/tools

ENV DB=db
ENV USER=OMI
ENV PWD=5326



COPY ./tools/setup-mariadb.sh /etc/mysql/tools/

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /etc/mysql/tools/setup-mariadb.sh
RUN /etc/mysql/tools/setup-mariadb.sh
RUN service mysql start && mysql -u root < db1.sql

EXPOSE 3306
CMD  ["mysqld"]
