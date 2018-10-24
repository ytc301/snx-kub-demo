FROM nginx:latest
RUN mkdir -p /data/www/test
ADD . /data/www/test
EXPOSE 80
CMD ["nginx"]
