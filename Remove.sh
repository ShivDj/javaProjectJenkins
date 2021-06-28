#!/bin/bash


if [ /home/ubuntu/java_image ]; then
   sudo docker rmi -f java_image
fi

if [ /home/ubuntu/java_container ]; then
   sudo docker rmi -f java_container
fi

#sudo docker rm -f java_container
#sudo docker rmi -f java_image

cd /home/ubuntu/java
sudo docker-compose up --build -d
