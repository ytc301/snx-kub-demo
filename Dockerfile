FROM nginx:1.14.0
RUN mkdir -p /data/www/test
ADD . /data/www/test
COPY snx.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
