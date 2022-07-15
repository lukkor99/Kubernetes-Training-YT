#!/bin/bash

minikube start # start of minikube cluster

echo "================================"

kubectl get nodes # get all nodes both master and worker

echo "================================"

kubectl config view # get configuration details

echo "================================"

kubectl cluster-info # get cluster information details

echo "================================"

kubectl get pod # get particular pod

echo "================================"

minikube ssh # access minikube pod through ssh, #exit

echo "================================"

minikube stop # stop of the minikube cluster

echo "================================"

minikube status # check status of the cluster

echo "================================"

minikube delete # delete particular cluster

echo "================================"

minikube addons list # list all minikube nodes 

echo "================================"

minikube dashboard # copy ip address

exit 0