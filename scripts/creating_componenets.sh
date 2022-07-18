#!/bin/bash

kubectl apply -f outputs/ngnix-config.yaml  # creating deployment from yaml file

kubectl apply -f outputs/ngnix-service.yaml # creating service from yaml file

kubectl get pod # check for the deployment pod

kubectl get service # check if created service is up and running

kubectl describe service nginx-service # get detailed info about created service

kubectl get pod -o wide # even more detailed information about existing pods (IP Addresses)

kubectl get deployment ngnix-deployment -o yaml >> scripts/outputs/final-ngnix-configuration.yaml # saving final configuration to yaml file

kubectl delete -f scripts/outputs/ngnix-config.yaml # deleting deployment basing on configuration file

kubectl delete -f scripts/outputs/ngnix-service.yaml # deleting deployment basing on configuration file

exit 0
