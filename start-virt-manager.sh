#!/bin/bash

socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &

IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

docker run --name virt-manager --rm -it -d -e DISPLAY=$IP:0 -v ~/.ssh:/root/.ssh -v /tmp/.X11-unix:/tmp/.X11-unix virt-manager-docker