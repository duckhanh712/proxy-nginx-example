FROM nginx:1.18

WORKDIR /etc/nginx/conf.d/

COPY default.template.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8083/tcp

CMD ["nginx", "-g", "daemon off;"]