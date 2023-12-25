# На пк должен быть установлен git,docker и docker-compose.
## Запуск
1. Скачать (git clone <ur>)
2. Создайте файл с секретами `.env` (например, из файла образца `.env.example` ).
```shell
cp .env .env 
```
3. Зайти с помощью терминала/Windows power shell в папку проекта выполнить команду `docker compose up`.
```shell
docker-compose up
```
---

* Проверить работоспособность; 
```shell
curl -i -X GET http://127.0.0.1:5001/api/user
```
```shell
curl -i -X POST http://127.0.0.1:80/api/user -H 'Content-Type: application/json' -d '{"username":"user1234","email":"u1ser@example.com" ,"password_hash":"password_hash"}'
```
```shell
curl -i -X GET http://127.0.0.1:80/api/user
```
* **Success Response**

    * **Code:** 200 <br />
      **Content:**

      ```[{"id": 1,"username": "user123", "email": "user@example.com","password_hash": "password_hash"}]```


todo Доделать докерфайл. Два разных аргумента.переменых в одном запуск 'миграции' бд при втором запуск uwsgi
docker build . -t egor140512/exercise:0.2
docker push egor140512/exercise:0.2
