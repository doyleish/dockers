FROM nginx:latest

EXPOSE 80/tcp
EXPOSE 443/tcp

RUN mkdir -p /websrv\
    && mkdir -p /mnt/store0\
    && mkdir -p /etc/letsencrypt/{live,archive}\
    && mkdir -p /run/php\
    && apt-get update\
    && apt-get install -y php7.3-fpm php-rrd

CMD php-fpm7.3 -D && nginx -g 'daemon off;'
