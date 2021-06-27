#!/bin/bash

sudo docker rm -f java_container
sudo docker rmi -f java_image

cd /home/ubuntu/java
sudo docker-compose up --build -d
