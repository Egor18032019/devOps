* Репозиторий exercise-03 в котором содержится код приложения в корне, все необходимое для сборки приложения в .deploy/docker, необходимости для развертывания в kubernetes в .deploy/kubernetes
* Если раннер развертывается через docker-compose - в репозитории должен находиться соответствующий файл
* README.md должен описывать установку kubernetes кластера и раннера

helm upgrade --install first bitnami/postgresql -f helm.yaml -n exercise-02