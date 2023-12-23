`*` README.md должен описывать установку kubernetes кластера
  
* Для установки раннера необходимо выполнить следующее:

  Зайти в настройки репозитория гитлаба и отключить доступные раннеры
* * в папке проекта выполнить команду docker-compose up
    * настроить гитлаб раннер
* *  docker exec -it exercise-03_gitlab-runner_1 bash
    * зарегистрироваться командной
* gitlab-runner register
* * * Далее в /etc/gitlab-runner/config выставить следующие настройки
      image = "docker:stable"                                                                                                                              
      privileged = true                                                                                                                                    
      volumes = ["/cache","/var/run/docker.sock:/var/run/docker.sock"]
* 
 
Сделать комит и запушить
для проверки результата  перейти на гит лаб проект job







helm upgrade --install first bitnami/postgresql -f helm.yaml -n exercise-02