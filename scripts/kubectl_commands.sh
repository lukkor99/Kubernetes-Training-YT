#!/bin/bash

kubectl version # check for kubernetes client version

kubectl get pod # checking all pods in current namespace

# we are not creating pod - it's a basics abstraction of the kubernetes infrastructure
# instead of creating pods, deployments basing on some image are created. It's synced with creating new pod on node..

kubectl create deployment ngnix-deployment --image=ngnix # creating a basic deployment named ngnix deployemnt with latest ngnix as a base image

kubectl get deployement # preview of created deployment

exit 0