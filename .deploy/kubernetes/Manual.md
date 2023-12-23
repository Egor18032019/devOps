Установить кластер командой
```shell
kind create cluster --config kind.yaml -n simbir
```
Установить манифест ns командой
```shell
kubectl apply -f ns.yaml
```
Установить манифест бд командой
```shell
kubectl kubectl apply -f postgresql.yaml
```

Установить развертыванием приложения командой
```shell
kubectl apply -f application.yaml
```
Добавить Ingress
```shell
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
```
* или запустить скрипт ignite.sh


Дя удаление кластера использовать команду
```shell
kind delete cluster -n simbir
```