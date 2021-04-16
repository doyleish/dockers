#!/bin/bash

docker run -p 80 -p 443 -v /websrv:/websrv -v /mnt/store0:/mnt/store0 goldeneye/nginx
