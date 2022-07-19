#!/bin/bash

kubectl apply -f config/mongo-secret.yaml # creating mongo secret (before deployment!!!)

echo -n 'to be encrypted' | base64 # create encoded credentials

kubectl get secret mongodb-secret # retrieve created secret 

kubectl apply -f config/mongo-configmap.yaml # create config map for mongo db express 

kubectl apply -f config/mongo-deployment.yaml # create deployment for mongodb

kubectly apply -f config/mongoexpress-deployment.yaml # create deployment for mongo express

minikube service mongo-express-service # assign external ip to access the service

exit 0
