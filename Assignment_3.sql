Enter password: ***************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

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
| student_db         |
| sys                |
| world              |
+--------------------+
9 rows in set (0.01 sec)

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
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO student VALUES
    -> (1, 'rutuja', 20, 'Thane'),
    -> (2, 'ritik', 22, 'vashi'),
    -> (3, 'rituja', 21, 'Nerul'),
    -> (4, 'ritesh', 21, 'panvel'),
    -> (5, 'shreeram', 23, 'seawoods');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> show tables;
+-------------------+
| Tables_in_student |
+-------------------+
| student           |
+-------------------+
1 row in set (0.00 sec)

mysql> select * from student;
+---------+----------+------+----------+
| roll_no | name     | age  | address  |
+---------+----------+------+----------+
|       1 | rutuja   |   20 | Thane    |
|       2 | ritik    |   22 | vashi    |
|       3 | rituja   |   21 | Nerul    |
|       4 | ritesh   |   21 | panvel   |
|       5 | shreeram |   23 | seawoods |
+---------+----------+------+----------+
5 rows in set (0.00 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(50) | YES  |     | NULL    |       |
| age     | int         | YES  |     | NULL    |       |
| address | varchar(50) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table student add email VARCHAR(30) NOT NULL;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(50) | YES  |     | NULL    |       |
| age     | int         | YES  |     | NULL    |       |
| address | varchar(50) | YES  |     | NULL    |       |
| email   | varchar(30) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> Alter table student modify name VARCHAR(20) Not null;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| age     | int         | YES  |     | NULL    |       |
| address | varchar(50) | YES  |     | NULL    |       |
| email   | varchar(30) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table student rename column name to full_name;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| roll_no   | int         | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| age       | int         | YES  |     | NULL    |       |
| address   | varchar(50) | YES  |     | NULL    |       |
| email     | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> Alter table student modify full_name int(30) not null;
ERROR 1366 (HY000): Incorrect integer value: 'rutuja' for column 'full_name' at row 1
mysql> select * from student;
+---------+-----------+------+----------+-------+
| roll_no | full_name | age  | address  | email |
+---------+-----------+------+----------+-------+
|       1 | rutuja    |   20 | Thane    |       |
|       2 | ritik     |   22 | vashi    |       |
|       3 | rituja    |   21 | Nerul    |       |
|       4 | ritesh    |   21 | panvel   |       |
|       5 | shreeram  |   23 | seawoods |       |
+---------+-----------+------+----------+-------+
5 rows in set (0.00 sec)

mysql> Alter table student modify age varchar(3) not null;
Query OK, 5 rows affected (0.13 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| roll_no   | int         | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| age       | varchar(3)  | NO   |     | NULL    |       |
| address   | varchar(50) | YES  |     | NULL    |       |
| email     | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table student rename to student_details;
Query OK, 0 rows affected (0.02 sec)

mysql> desc student;
ERROR 1146 (42S02): Table 'student.student' doesn't exist
mysql> desc student_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| roll_no   | int         | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| age       | varchar(3)  | NO   |     | NULL    |       |
| address   | varchar(50) | YES  |     | NULL    |       |
| email     | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table student_details drop column email;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| roll_no   | int         | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| age       | varchar(3)  | NO   |     | NULL    |       |
| address   | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>  alter table student_details drop primary key;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc student_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| roll_no   | int         | NO   |     | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| age       | varchar(3)  | NO   |     | NULL    |       |
| address   | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table student_details add primary key(roll_no);
Query OK, 0 rows affected (0.15 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| roll_no   | int         | NO   | PRI | NULL    |       |
| full_name | varchar(20) | NO   |     | NULL    |       |
| age       | varchar(3)  | NO   |     | NULL    |       |
| address   | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table department(dept_id varchar(30) Primary key, dept_name varchar(30) not null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | varchar(30) | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> create table employee(emp_id varchar(30) primary key, emp_name varchar(30) not null, dept_id varchar(30), foreign key(dept_id) references department(dept_id));
Query OK, 0 rows affected (0.07 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | varchar(30) | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | varchar(30) | NO   | PRI | NULL    |       |
| emp_name | varchar(30) | NO   |     | NULL    |       |
| dept_id  | varchar(30) | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into department values('D101', 'HR'), ('D102', 'IT');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
| D101    | HR        |
| D102    | IT        |
+---------+-----------+
2 rows in set (0.00 sec)

mysql> insert into employee values('E101', 'Priyanka', 'D102'),('E102', 'Bhavika', 'D102'), ('E103', 'Milan', 'D101');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
| E101   | Priyanka | D102    |
| E102   | Bhavika  | D102    |
| E103   | Milan    | D101    |
+--------+----------+---------+
3 rows in set (0.00 sec)

mysql> select * from student_details;
+---------+-----------+-----+----------+
| roll_no | full_name | age | address  |
+---------+-----------+-----+----------+
|       1 | rutuja    | 20  | Thane    |
|       2 | ritik     | 22  | vashi    |
|       3 | rituja    | 21  | Nerul    |
|       4 | ritesh    | 21  | panvel   |
|       5 | shreeram  | 23  | seawoods |
+---------+-----------+-----+----------+
5 rows in set (0.00 sec)

mysql> select * from student_details limit 2;
+---------+-----------+-----+---------+
| roll_no | full_name | age | address |
+---------+-----------+-----+---------+
|       1 | rutuja    | 20  | Thane   |
|       2 | ritik     | 22  | vashi   |
+---------+-----------+-----+---------+
2 rows in set (0.00 sec)

mysql>










