# Demo

```sh
mysql -u root -e 'create database test'
mysql -u root -e 'create database dev'

env MYSQL_DATABASE=test ./dbdatool.phar apply '!'
env MYSQL_DATABASE=dev  ./dbdatool.phar apply '!'

asciinema -c bash rec
```

---

```sh
curl -L https://github.com/ngyuki/php-dbdatool/releases/download/v0.0.1/dbdatool.phar -o dbdatool.phar
chmod +x dbdatool.phar
./dbdatool.phar --version

cat config.php
cat composer.json

cat init.sql
mysql -u root test -v < init.sql

MYSQL_DATABASE=test ./dbdatool.phar dump -o schema.json
./dbdatool.phar apply schema.json
./dbdatool.phar apply schema.json

mysql -u root dev -e 'show create table t_group \G'
mysql -u root dev -e 'show create table t_user \G'

git add schema.json
git commit -m 'add schema.json'

git co next

git diff master:init.sql next:init.sql
cat init.sql
mysql -u root test -v < init.sql
MYSQL_DATABASE=test ./dbdatool.phar dump -o schema.json

git add schema.json
git commit -m 'fix schema.json'
git diff master next

./dbdatool.phar diff schema.json
./dbdatool.phar apply schema.json
./dbdatool.phar apply schema.json

mysql -u root dev -e 'show create table t_group \G'
mysql -u root dev -e 'show create table t_user \G'

git co master

./dbdatool.phar diff schema.json
./dbdatool.phar apply schema.json
./dbdatool.phar apply schema.json

mysql -u root dev -e 'show create table t_group \G'
mysql -u root dev -e 'show create table t_user \G'
```
