#!/bin/sh
docker run -it --rm $(docker build . -q)
