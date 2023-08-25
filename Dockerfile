FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
VOLUME ["/data", "/etc/nginx/sitre-enabled", "/var/log/nginx"]
WORKDIR /var/www/html
COPY index.nginx-debian.html .
EXPOSE 80
WORKDIR /etc/nginx
CMD ["nginx", "-g", "daemon off;"]

