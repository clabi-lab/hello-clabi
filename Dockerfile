FROM ubuntu
RUN apt update
RUN apt install -y nginx
VOLUME ["/data", "/etc/nginx/sitre-enabled", "/var/log/nginx"]
EXPOSE 80
WORKDIR /etc/nginx 
CMD ["nginx", "-g", "daemon off;"]

