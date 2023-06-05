# new-job
Привет! Файлы на выполенные задания находяися в папке ansible

Создать Docker Compose скрипт для развертки кластера из трех инстансов cassandra, причем каждый из них должен быть доступен из основной (локальной) сети по отдельному ip адресу.

Первая команда Ansible `ansible ubuntu -m copy -a "src=docker-compose.yml dest=/home/ubuntu mode=777" -b` копирует файл `docker-compose.yml` из текущей директории на машину `ubuntu` в директорию `/home/ubuntu`. Параметр `mode=777` устанавливает права доступа к файлу.

Вторая команда Ansible `ansible ubuntu -m command -a "sudo systemctl status docker"` выполняет команду `systemctl status docker` на машине `ubuntu` с помощью модуля `command`. Эта команда проверяет статус сервиса Docker.

Следующая команда `docker-compose -f docker-compose.yml up` запускает контейнеры Docker, определенные в файле `docker-compose.yml`.

Если предыдущая команда завершается с ошибкой доступа, попробуйте выполнить команду `sudo docker-compose -f docker-compose.yml up`.

Команда `docker-compose ps` показывает статус запущенных контейнеров.

Команда `sudo docker exec -it cassandra1 cqlsh` запускает команду `cqlsh` внутри контейнера `cassandra1`, позволяя взаимодействовать с базой данных Cassandra с помощью языка CQL.

Команды CQL `CREATE KEYSPACE mykeyspace WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};` создают новое пространство ключей с именем `mykeyspace`, а `USE mykeyspace;` выбирает его в качестве текущего. Команда `CREATE TABLE mytable (id INT PRIMARY KEY, data TEXT);` создает новую таблицу `mytable` с колонкой `id` типа `INT` в качестве первичного ключа и колонкой `data` типа `TEXT`. Команда `INSERT INTO mytable (id, data) VALUES (1, 'Hello, Cassandra!');` добавляет новую строку в таблицу `mytable`. Команда `SELECT * FROM mytable;` извлекает все строки из таблицы `mytable`.

написать ansible скрипт реализующий следующее:
1. на ОС ubuntu LTS установить openldap сервер
2. установить в ldap пароль администратора
3. установить в ldap domain и organization
4. добавить 2 пользователя в ldap
6. добавить 2 группы в ldap
Наконец, команда `ansible-playbook ldap.yml --extra-vars "@vars.yml"` запускает плейбук Ansible `ldap.yml`