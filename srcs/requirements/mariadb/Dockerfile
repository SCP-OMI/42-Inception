# FROM debian:buster
# RUN apt-get update && apt-get install -y mariadb-server

# COPY config/50-server.cnf /etc/mysql/mariadb.conf.d/
# ARG db_name db_user db_pwd
# COPY config/script.sh /utils/
# EXPOSE 3306
# RUN chmod +x /utils/script.sh
# CMD ["/utils/script.sh"]

FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server sudo

RUN sed -i 's/bind-address            = 127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY config/script.sh /

RUN chmod +x /script.sh

WORKDIR /

CMD ["./script.sh"]
