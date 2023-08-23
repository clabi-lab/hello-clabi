FROM ubuntu
RUN apt-get install -y gnupg
RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
RUN apt-get update
RUN apt-get install -y nginx
VOLUME ["/data", "/etc/nginx/sitre-enabled", "/var/log/nginx"]
EXPOSE 80
WORKDIR /etc/nginx 
CMD ["nginx", "-g", "daemon off;"]

