#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
IMAGE="justb4/jmeter:5.1.1"

# Finally run
sudo docker stop ${NAME} > /dev/null 2>&1
sudo docker rm ${NAME} > /dev/null 2>&1
sudo docker run --name ${NAME} --add-host=dl-cdn.alpinelinux.org:151.101.112.249 -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@
