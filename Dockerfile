FROM nginx:latest

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install certbot -t jessie-backports

expose 80

CMD ["nginx", "-g", "daemon off;"]
