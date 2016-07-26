FROM nginx

MAINTAINER MKFMIKU <mikumkf@outlook.com>

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 443