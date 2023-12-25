.ONESHELL:
.PHONY: destroy build

PROJECT_NAME=exercise-02

build:
    kind create cluster --config kind.yaml -n simbir \
	kubectl apply -f ns.yaml \
	kubectl apply -f postgresql.yaml \
	kubectl apply -f application.yaml \
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

destroy:
	kind delete cluster -n simbir

waitIngress:
	kubectl wait --namespace ingress-nginx \
	for=condition=Ready pod \
	-selector=app.kubernetes.io/component=controller \
	-timeout=300s


waitDB:
kubectl wait --namespace exercise-02
	for=condition=Ready pod \
	-l app=db  \
	-timeout=300s