#!/bin/bash

docker run\
    -d\
    -p 53:5053/udp\
    -v /home/ryan/staging/dockers/goldeneye/unbound/config:/opt/unbound/etc/unbound\
    klutchell/unbound
