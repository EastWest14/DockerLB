#!/bin/sh


docker build -t server_1_image -f server_1.df .
docker build -t server_2_image -f server_2.df .
docker run -d -p 8000:8000 server_1_image
docker run -d -p 8001:8000 server_2_image
curl localhost:8000
curl localhost:8001
