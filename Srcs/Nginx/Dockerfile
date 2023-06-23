FROM debian:buster
RUN apt update && apt install -y nginx openssl
#RUN openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 \
#    -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost" \
#    -keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt
COPY nginx.conf /etc/nginx/nginx.conf
#COPY ssl/vbachele.key /etc/nginx/ssl/vbachele.key

#EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]