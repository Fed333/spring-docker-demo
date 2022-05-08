/bin/sh build.sh

port_ex=3000
port_in=8088
container_name=os-spring-docker-demo-in
image_name=os-spring-docker-demo-in
docker rm -f $container_name
docker run --name $container_name -p $port_ex:$port_in $image_name