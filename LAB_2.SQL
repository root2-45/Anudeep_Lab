mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| rutuja             |
| sakila             |
| student            |
| student_db         |
| sys                |
| world              |
+--------------------+
11 rows in set (0.04 sec)

mysql> create database Bankaccount;
Query OK, 1 row affected (0.05 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bankaccount        |
| college            |
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| rutuja             |
| sakila             |
| student            |
| student_db         |
| sys                |
| world              |
+--------------------+
12 rows in set (0.00 sec)

mysql> use bankaccount;
Database changed

mysql> create table Bankaccount(account_id varchar(10),account_holder_name varchar(50),account_balance int(8));
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into Bankaccount values('R101','Rutuja',200000),('R102','Ritik',300000),('R103','Shreeram',400000),('R104','Siya','500000');
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0


mysql> select account_holder_name,account_balance from Bankaccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rutuja              |          200000 |
| Ritik               |          300000 |
| Shreeram            |          400000 |
| Siya                |          500000 |
+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from Bankaccount where account_balance >30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rutuja              |          200000 |
| Ritik               |          300000 |
| Shreeram            |          400000 |
| Siya                |          500000 |
+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> update Bankaccount set account_balance=600000 where account_id='R101';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> show tables;
+-----------------------+
| Tables_in_bankaccount |
+-----------------------+
| bankaccount           |
+-----------------------+
1 row in set (0.00 sec)

mysql> desc bankaccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | varchar(10) | YES  |     | NULL    |       |
| account_holder_name | varchar(50) | YES  |     | NULL    |       |
| account_balance     | int         | YES  |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

mysql> select* from Bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| R101       | Rutuja              |          600000 |
| R102       | Ritik               |          300000 |
| R103       | Shreeram            |          400000 |
| R104       | Siya                |          500000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql>