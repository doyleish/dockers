#!/bin/bash
#
# Uncomment to cut new certs
#docker run -it --rm --name certbot -v "`pwd`/data/letsencrypt/etc:/etc/letsencrypt" -p 80:80 certbot/certbot certonly -n --standalone -d minio.rdoyle.net -m ryan@rdoyle.net --agree-tos
#
# Renewal
docker run -it --rm --name certbot -v "`pwd`/data/letsencrypt/etc:/etc/letsencrypt" -p 80:80 certbot/certbot renew -v -n --standalone -m ryan@rdoyle.net --agree-tos
docker exec nginx nginx -s reload
