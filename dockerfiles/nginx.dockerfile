FROM nginx:stable-alpine

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/www/html

COPY src .