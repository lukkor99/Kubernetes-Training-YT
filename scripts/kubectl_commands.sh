#!/bin/bash

kubectl version # check for kubernetes client version

kubectl get pod # checking all pods in current namespace

# we are not creating pod - it's a basics abstraction of the kubernetes infrastructure
# instead of creating pods, deployments basing on some image are created. It's synced with creating new pod on node..

kubectl create deployment ngnix-deployment --image=ngnix # creating a basic deployment named ngnix deployemnt with latest ngnix as a base image

kubectl get deployement # preview of created deployment
kubectl get pod # get latest pod - abstraction of the container
kubectl get replicaset # get replicaset - management unit of the pod replicas

kubectl edit deployment ngnix-deployment >> scripts/outputs/ngnix-config # edit current deployment configuration in yml file

kubectl apply nginix-deployement # applying deployment to go live

exit 0
