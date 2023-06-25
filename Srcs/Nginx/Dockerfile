FROM debian:buster

RUN apt update && apt install -y nginx openssl


RUN mkdir -p /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
    -out /etc/nginx/ssl/omi.pem \
    -keyout /etc/nginx/ssl/omi.key \
    -subj "/C=MA/ST=Bng/L=Bng/O=42 School/OU=omi/CN=omi/"

#COPY config/ngnix.conf /etc/nginx/conf.d/default.conf
ENTRYPOINT ["nginx", "-g", "daemon off;"]