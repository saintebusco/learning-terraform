#!/bin/bash
sudo yum update -y && sudo yum install -y docker
sudo systemctl enable docker
sudo systemcl start docker
sudo usermod -aG docker ec2-user
docker run -p 8080:80 nginx