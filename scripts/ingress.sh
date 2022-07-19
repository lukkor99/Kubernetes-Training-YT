#!/bin/bash

kubectl get ns # check for existing namespaces

kubectl get all -n kubernetes-dashboard # list all components within namespace

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=foo.bar.com"

kubectl create secret tls dashboard-tls-secret --key="ingress/secrets/tls.key" --cert="ingress/secrets/tls.crt"

kubectl get secret dashboard-tls-secret -o yaml >> ingress/dashboard-tls-secret.yaml

kubectl apply -f ingress/dashboard-ingress.yaml # create ingress from yaml configuration file

kubectl describe ingress k8s-dasboard -n kubernetes-dashboard # detailed backenmd info of specefied ingress

exit 0