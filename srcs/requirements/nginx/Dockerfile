FROM debian:bullseye
RUN apt-get update ; apt-get install -y nginx openssl
RUN mkdir /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
    -out /etc/nginx/ssl/OMI.crt \
    -keyout /etc/nginx/ssl/OMI.key \
    -subj "/C=MA/ST=Bng/L=Bng/O=42 School/OU=OMI.inc/CN=OMI/"

COPY n.conf /etc/nginx/conf.d 
RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
#RUN ufw allow 'Nginx HTTP'
