#!/bin/sh

CONTAINERS_VOL="/Users/menant/projects/containers_vol"

## Setup Gitlab
docker rm gitlab
sh gitlab/setup-gitlab.sh $CONTAINERS_VOL

## Setup Jenkins
docker rm jenkins
sh jenkins/setup-jenkins.sh $CONTAINERS_VOL

## Setup Consul
docker rm consul
sh consul/setup-consul.sh $CONTAINERS_VOL
