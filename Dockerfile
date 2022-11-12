FROM nginx:latest

MAINTAINER Nuu44a

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./ironman.jpg /usr/share/nginx/html/ironman.jpg
