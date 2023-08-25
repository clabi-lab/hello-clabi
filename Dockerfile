FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
VOLUME ["/data", "/etc/nginx/site-enabled", "/var/log/nginx"]
EXPOSE 80
WORKDIR /etc/nginx 
CMD ["nginx", "-g", "daemon off;"]

