FROM nginx:latest

EXPOSE 80/tcp
EXPOSE 443/tcp

RUN mkdir /websrv && mkdir -p /mnt/store0
COPY config/* /etc/nginx/
