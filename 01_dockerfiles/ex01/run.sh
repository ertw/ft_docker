#!/bin/sh
docker run -it -p=10011:10011 -p 9987:9987/udp -p 30033:30033 --rm $(docker build . -q)
