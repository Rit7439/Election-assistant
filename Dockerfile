FROM nginx:1.27-alpine

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY election-assistant.html /usr/share/nginx/html/index.html

EXPOSE 8080
