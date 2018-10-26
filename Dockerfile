FROM nginx:1.14.0
RUN mkdir -p /data/www/test && rm -rf /etc/nginx/conf.d/default.conf
ADD . /data/www/test
COPY default.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
