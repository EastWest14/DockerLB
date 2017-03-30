#!/bin/sh

docker network create simple-network
docker build -t server_1_image -f server_1.df .
docker build -t server_2_image -f server_2.df .
docker run -d --net=simple-network --name SOne server_1_image
docker run -d --net=simple-network --name STwo server_2_image
docker build -t docker_lb/basic-proxy -f basic_proxy.df .
docker run -d -p 80:80 --net=simple-network docker_lb/basic-proxy
curl localhost:80
curl localhost:80
curl localhost:80
curl localhost:80
curl localhost:80
curl localhost:80
curl localhost:80
curl localhost:80
curl localhost:80
curl localhost:80
