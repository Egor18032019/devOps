#!/bin/bash
kind create cluster --config kind.yaml -n simbir
kubectl apply -f ns.yaml
kubectl apply -f postgresql.yaml
kubectl wait pod \
--all \
--for=condition=Ready \
--namespace=exercise-02 \
--timeout=60s
kubectl apply -f application.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
