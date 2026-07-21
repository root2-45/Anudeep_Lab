Enter password: ***************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases
    -> show databases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show databases' at line 2
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.12 sec)

mysql> create database ecommerce;
Query OK, 1 row affected (0.03 sec)

mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> create table customer(cust_id VARCHAR(10) primary key, name VARCHAR(30) not null, city VARCHAR(20) not null, pincode INT(6) NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql>  create table customer(cust_id VARCHAR(10) primary key, name VARCHAR(30) not null, city VARCHAR(20) not null, pincode INT(6) NOT NULL);
Query OK, 0 rows affected, 1 warning (0.10 sec)

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cust_id | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(30) | NO   |     | NULL    |       |
| city    | varchar(20) | NO   |     | NULL    |       |
| pincode | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

mysql> select * from customer;
Empty set (0.01 sec)

mysql> insert into customer (cust_id, name, city, pincode) values('C101','rutuja','kurla',123456);
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+---------+--------+-------+---------+
| cust_id | name   | city  | pincode |
+---------+--------+-------+---------+
| C101    | rutuja | kurla |  123456 |
+---------+--------+-------+---------+
1 row in set (0.00 sec)

mysql> insert into customer values ('C102','rutujaa','kurla',123456);
Query OK, 1 row affected (0.04 sec)

mysql>  select * from customer;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> insert into customer values ('C103','rutujaa','kurla',123456);
Query OK, 1 row affected (0.01 sec)

mysql>  select * from customer;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select name from customer;
+---------+
| name    |
+---------+
| rutuja  |
| rutujaa |
| rutujaa |
+---------+
3 rows in set (0.00 sec)

mysql>