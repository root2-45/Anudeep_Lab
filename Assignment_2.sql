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
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.07 sec)

mysql> CREATE DATABASE student;
Query OK, 1 row affected (0.01 sec)

mysql> USE student;
Database changed
mysql> CREATE TABLE student (
    ->     roll_no INT PRIMARY KEY,
    ->     name VARCHAR(50),
    ->     age INT,
    ->     address VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> INSERT INTO student VALUES
    -> (1, 'isht', 20, 'Thane'),
    -> (2, 'jarin', 22, 'vashi'),
    -> (3, 'abhinav', 21, 'Nerul'),
    -> (4, 'ishan', 21, 'panvel'),
    -> (5, 'manyata', 23, 'seawoods');
Query OK, 5 rows affected (0.05 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> DROP DATABASE student;
Query OK, 1 row affected (0.13 sec)

mysql> SHOW DATABASES;
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
8 rows in set (0.01 sec)

mysql> CREATE DATABASE smart;
Query OK, 1 row affected (0.01 sec)

mysql> USE smart;
Database changed
mysql> CREATE TABLE students (
    ->     roll_no INT PRIMARY KEY,
    ->     name VARCHAR(50),
    ->     courses VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO students VALUES
    -> (1, 'Raja', 'CSE'),
    -> (2, 'Reena','AIML');
Query OK, 2 rows affected (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SHOW TABLES;
+-----------------+
| Tables_in_smart |
+-----------------+
| students        |
+-----------------+
1 row in set (0.02 sec)

mysql> SELECT * FROM students;
+---------+-------+---------+
| roll_no | name  | courses |
+---------+-------+---------+
|       1 | Raja  | CSE     |
|       2 | Reena | AIML    |
+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> select name from students;
+-------+
| name  |
+-------+
| Raja  |
| Reena |
+-------+
2 rows in set (0.00 sec)

mysql> update students set name = 'Rutuja' where roll_no = 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from students;
+---------+--------+---------+
| roll_no | name   | courses |
+---------+--------+---------+
|       1 | Rutuja | CSE     |
|       2 | Reena  | AIML    |
+---------+--------+---------+
2 rows in set (0.00 sec)

mysql>  update students set courses = 'DS' where roll_no = 2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from students;
+---------+--------+---------+
| roll_no | name   | courses |
+---------+--------+---------+
|       1 | Rutuja | CSE     |
|       2 | Reena  | DS      |
+---------+--------+---------+
2 rows in set (0.00 sec)

mysql> desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(50) | YES  |     | NULL    |       |
| courses | varchar(50) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into students values (3, "Ritik", "IOT"), (4, "Shree", "CMPS");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into students values (5, "bhavika", "IT"), (6, "Sai", "CMS");
Query OK, 2 rows affected (0.22 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql>  select * from students;
+---------+---------+---------+
| roll_no | name    | courses |
+---------+---------+---------+
|       1 | Rutuja  | CSE     |
|       2 | Reena   | DS      |
|       3 | Ritik   | IOT     |
|       4 | Shree   | CMPS    |
|       5 | bhavika | IT      |
|       6 | Sai     | CMS     |
+---------+---------+---------+
6 rows in set (0.00 sec)

mysql> delete from students where roll_no =2;
Query OK, 1 row affected (0.01 sec)

mysql> select * from students;
+---------+---------+---------+
| roll_no | name    | courses |
+---------+---------+---------+
|       1 | Rutuja  | CSE     |
|       3 | Ritik   | IOT     |
|       4 | Shree   | CMPS    |
|       5 | bhavika | IT      |
|       6 | Sai     | CMS     |
+---------+---------+---------+
5 rows in set (0.00 sec)

mysql> delete from students where roll_no = 5;
Query OK, 1 row affected (0.01 sec)

mysql> select * from students;
+---------+--------+---------+
| roll_no | name   | courses |
+---------+--------+---------+
|       1 | Rutuja | CSE     |
|       3 | Ritik  | IOT     |
|       4 | Shree  | CMPS    |
|       6 | Sai    | CMS     |
+---------+--------+---------+
4 rows in set (0.00 sec)

mysql> delete from students;
Query OK, 4 rows affected (0.01 sec)

mysql> select * from students;
Empty set (0.00 sec)

mysql>  desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(50) | YES  |     | NULL    |       |
| courses | varchar(50) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into students values (5, "Rutuja", "IT"), (6, "Ritik", "CMS");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into students values (3, "Siya", "IOT"), (4, "Shriram", "CMPS");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from students;
+---------+---------+---------+
| roll_no | name    | courses |
+---------+---------+---------+
|       3 | Siya    | IOT     |
|       4 | Shriram | CMPS    |
|       5 | Rutuja  | IT      |
|       6 | Ritik   | CMS     |
+---------+---------+---------+
4 rows in set (0.00 sec)

mysql> truncate table students;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from students;
Empty set (0.00 sec)

mysql> desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(50) | YES  |     | NULL    |       |
| courses | varchar(50) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into students values (5, "Rutuja", "IT"), (6, "Ritik", "CMS");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql>  insert into students values (3, "Siya", "IOT"), (4, "Shriram", "CMPS");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from students;
+---------+---------+---------+
| roll_no | name    | courses |
+---------+---------+---------+
|       3 | Siya    | IOT     |
|       4 | Shriram | CMPS    |
|       5 | Rutuja  | IT      |
|       6 | Ritik   | CMS     |
+---------+---------+---------+
4 rows in set (0.00 sec)

mysql> drop table students;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from students;
ERROR 1146 (42S02): Table 'smart.students' doesn't exist
mysql> desc students;
ERROR 1146 (42S02): Table 'smart.students' doesn't exist
mysql> drop database smart;
Query OK, 0 rows affected (0.01 sec)

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

mysql> create database Student_DB;
Query OK, 1 row affected (0.01 sec)

mysql> use Student_DB;
Database changed
mysql> create table student(roll_no VARCHAR(30) primary key, name VARCHAR(30) not null, age INT(3) not null, address VARCHAR(30) not null);
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> insert into student values('101', 'Aryan', 25, 'Thane'), ('102', 'Sam', 28, 'Kopar'), ('103', 'Ram', 27, 'Vashi'), ('104', 'Vani', 30, 'Mulund');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 101     | Aryan |  25 | Thane   |
| 102     | Sam   |  28 | Kopar   |
| 103     | Ram   |  27 | Vashi   |
| 104     | Vani  |  30 | Mulund  |
+---------+-------+-----+---------+
4 rows in set (0.00 sec)

mysql> select * from student where name like 's%';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 102     | Sam  |  28 | Kopar   |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where address like 'm%';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 104     | Vani |  30 | Mulund  |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where address like '%shi';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 103     | Ram  |  27 | Vashi   |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where name like '%am';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 102     | Sam  |  28 | Kopar   |
| 103     | Ram  |  27 | Vashi   |
+---------+------+-----+---------+
2 rows in set (0.00 sec)

mysql> select * from student where name like '%an%';
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 101     | Aryan |  25 | Thane   |
| 104     | Vani  |  30 | Mulund  |
+---------+-------+-----+---------+
2 rows in set (0.00 sec)

mysql> select * from student;
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 101     | Aryan |  25 | Thane   |
| 102     | Sam   |  28 | Kopar   |
| 103     | Ram   |  27 | Vashi   |
| 104     | Vani  |  30 | Mulund  |
+---------+-------+-----+---------+
4 rows in set (0.00 sec)

mysql> select * from student where name like 'a____';
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 101     | Aryan |  25 | Thane   |
+---------+-------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where address like 'k____';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 102     | Sam  |  28 | Kopar   |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where address like '%m_____';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 104     | Vani |  30 | Mulund  |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql>  select * from student where address like '%m____';
Empty set (0.00 sec)

mysql> select * from student where address like '%m______';
Empty set (0.00 sec)

mysql>