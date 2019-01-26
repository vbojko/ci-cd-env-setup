#!/bin/bash

docker build -t jenkins-python-ansible-aws /home/centos/ci-cd-env-setup/jenkins2/

docker run \
    -d --restart always  -v /var/run/docker.sock:/var/run/docker.sock \
    -v /usr/bin/docker:/usr/bin/docker \
    -v /home/centos/ci-cd-env-setup/docker_volumes/jenkins:/var/jenkins_home \
    -p 2180:8080 \
    -p 21000:50000 \
    --net ci-cd-docker-net --ip='172.18.0.3' \
    --name jenkins-python-ansible-aws \
    jenkins-python-ansible-aws
