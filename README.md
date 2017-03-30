# DockerLB
Demo multiinstance dockerized server reachable at localhost:80. To launch, simply call ./launch, after the setup curl at port 80 to see the results slightly vary between server I and II. 
System consists of 3 containers: 2 server containers and an Nginx container acting as a load balancer. Before launching, I recommend removing all running and stopped containers from the host to avoid naming or port collisions.

Requirments: Docker, Bash.
