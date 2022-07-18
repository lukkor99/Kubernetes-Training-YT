#!/bin/bash

apt-get update # updating 

apt-get install docker.io # installing docker engine

systemctl enable docker # enabling docker dameon

systemctl start docker # starting docker dameon

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add # add k8s components from repo

apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main" # adding downloaded repository to known repos

apt-get install kubeadm kubelet kubectl # install all necessary k8s dependencies

# check version

echo 'Docker version: '
docker --version

echo 'Kubernetes kubectl version: '
kubectl --version

exit 0
