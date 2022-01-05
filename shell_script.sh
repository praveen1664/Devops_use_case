#!/bin/bash
IMAGE_NAME="ecosiatree"
#uncoment the below line if minikube is not running
#minikube start
#eval $(minikube docker-env) 
eval $(minikube -p minikube docker-env)
docker build -t $IMAGE_NAME:latest .
minikube kubectl -- create -f manifest.yml
#minikube kubectl -- get pods -o wide

 
