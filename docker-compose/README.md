# new-job


Команда `docker-compose ps` показывает статус запущенных контейнеров.

sudo docker exec -it cassandra_1 nodetool status - команда для проверки состояния кластера

Команда `sudo docker exec -it cassandra1 cqlsh` запускает команду `cqlsh` внутри контейнера `cassandra1`, позволяя взаимодействовать с базой данных Cassandra с помощью языка CQL.

Команды CQL `CREATE KEYSPACE mykeyspace WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};` создают новое пространство ключей с именем `mykeyspace`, а `USE mykeyspace;` выбирает его в качестве текущего. Команда `CREATE TABLE mytable (id INT PRIMARY KEY, data TEXT);` создает новую таблицу `mytable` с колонкой `id` типа `INT` в качестве первичного ключа и колонкой `data` типа `TEXT`. Команда `INSERT INTO mytable (id, data) VALUES (1, 'Hello, Cassandra!');` добавляет новую строку в таблицу `mytable`. Команда `SELECT * FROM mytable;` извлекает все строки из таблицы `mytable`.

<img width="760" alt="image" src="https://github.com/swinnytodd/new-job/assets/101714593/5387357c-8fd8-4e12-8454-c17aa258ac92">

Прверка доступности каждого контейнера с дургой машины
<img width="736" alt="image" src="https://github.com/swinnytodd/new-job/assets/101714593/d3b7e6dc-8c1b-4ee8-89ce-cbbf07b01230">

