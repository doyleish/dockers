#!/bin/bash

docker run -d -p 80:80 -p 443:443\
    -v /websrv:/websrv:ro\
    -v /etc/letsencrypt/live:/etc/letsencrypt/live:ro\
    -v /etc/letsencrypt/archive:/etc/letsencrypt/archive:ro\
    -v /mnt/store0:/mnt/store0:ro\
    goldeneye/nginx

