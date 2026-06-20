FROM nginx:alpine

COPY source/*.html /usr/share/nginx/html/
COPY styles/style.css /usr/share/nginx/html/

EXPOSE 80