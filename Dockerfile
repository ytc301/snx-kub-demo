FROM nginx:latest
COPY ./snx.conf /etc/nginx/conf.d/
RUN mkdir -p /data/www/test
ADD . /data/www/test
EXPOSE 80
CMD ["nginx"]
