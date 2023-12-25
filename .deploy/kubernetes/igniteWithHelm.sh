#!/bin/bash
kind create cluster --config kind.yaml -n simbir
kubectl apply -f ns.yaml
helm upgrade --install first bitnami/postgresql -f values.yaml -n exercise-02
kubectl apply -f application.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
