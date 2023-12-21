* README.md должен описывать установку kubernetes кластера
* 
* и раннера
docker pull gitlab/gitlab-runner
Зайти в репозиторий гитлаба 
* Отключить доступные ранеры
* и взять токен
Доабвить токен
Сделать комит и запушить
helm upgrade --install first bitnami/postgresql -f helm.yaml -n exercise-02