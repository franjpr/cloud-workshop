#!/bin/bash

HOST="ec2-52-212-86-43.eu-west-1.compute.amazonaws.com"
USER="ec2-user"
KEY="./key-franjpr.pem"

ssh -i $KEY $USER@$HOST \
  "sudo yum install docker -y && sudo service docker start && docker kill $(docker ps -q) && sudo docker pull franjpr/my-node-server && sudo docker run -d -p 80:8080 franjpr/my-node-server"
