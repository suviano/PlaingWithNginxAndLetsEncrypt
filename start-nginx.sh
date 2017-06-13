#!/bin/sh

# docker run --name some-nginx -d -p 8080:80 nginx

docker build -t suviano/nginx-certbot .

docker run --name some-nginx-with-certbot -p 8080:80 -d suviano/nginx-certbot

docker cp sites-available some-nginx-with-certbot:/etc/nginx/
