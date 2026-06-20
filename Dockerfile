FROM nginx:alpine

COPY *.html /usr/share/nginx/html/
COPY styles/style.css /usr/share/nginx/html/

EXPOSE 80