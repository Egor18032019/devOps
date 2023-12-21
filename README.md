`*` README.md должен описывать установку kubernetes кластера
  
* Для установки раннера необходимо выполнить следующее:

* * docker pull gitlab/gitlab-runner
    * настроить гитлаб раннер
* *  docker exec -it gitlab-runner bash
     * зарегистрироваться командной 
* gitlab-runner register 
* * * Далее в /etc/gitlab-runner/config выставить следующие настройки
  image = "docker:stable"                                                                                                                              
  privileged = true                                                                                                                                    
  oom_kill_disable = false                                                                                                                             
  disable_cache = false                                                                                                                                
  volumes = ["/cache","/var/run/docker.sock:/var/run/docker.sock"]
* 
Зайти в настройки репозитория гитлаба и отключить доступные раннеры
 
Сделать комит и запушить
для проверки результата  перейти на гит лаб проект job







helm upgrade --install first bitnami/postgresql -f helm.yaml -n exercise-02