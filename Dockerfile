FROM nginx:1.14.0
COPY ./snx.conf /etc/nginx/conf.d/
RUN mkdir -p /data/www/test
ADD . /data/www/test
EXPOSE 80
CMD ["nginx"]
