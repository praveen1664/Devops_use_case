#!/bin/bash
IMAGE_NAME="ecosia"
#uncoment the below line if minikube is not running
#minikube start
#eval $(minikube docker-env) 
eval $(minikube -p minikube docker-env)
docker build -t $IMAGE_NAME:latest .
kubectl apply -f manifest.yml
sleep 1m
kubectl get pods -o wide
 
