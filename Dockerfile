FROM debian:stable

RUN apt update && apt install -y nginx && apt clean

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;"]
