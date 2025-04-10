FROM ubuntu:24.04

RUN apt-get update
RUN apt install nginx -y curl -y zip -y
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY 2048-master /var/www/html

EXPOSE 80

CMD [ "/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf" ]
