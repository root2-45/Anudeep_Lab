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
12 rows in set (0.02 sec)

mysql> create database joins;
Query OK, 1 row affected (0.02 sec)

mysql> use joins;
Database changed
mysql> create table department(dept_id int(5) primary key,dept_name varchar(30)not null);
Query OK, 0 rows affected, 1 warning (0.07 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into department values(1,"HR"),(2,"IT"),(3,"FINANCE"),(4,"MARKETTING");
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select *from department;
+---------+------------+
| dept_id | dept_name  |
+---------+------------+
|       1 | HR         |
|       2 | IT         |
|       3 | FINANCE    |
|       4 | MARKETTING |
+---------+------------+
4 rows in set (0.00 sec)

mysql> create table employe(imp_id int(5)primary key, em_name varchar(30) not null,dept_id int,foreign key(dept_id)references department(dept_id));
Query OK, 0 rows affected, 1 warning (0.07 sec)

mysql> desc employe;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| imp_id  | int         | NO   | PRI | NULL    |       |
| em_name | varchar(30) | NO   |     | NULL    |       |
| dept_id | int         | YES  | MUL | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employe values(1,"Rutuja",1),(2,"Ram",2),(3,"ritik",1),(4,"Raju",null),(5,"Siya",4);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+------------+
| dept_id | dept_name  |
+---------+------------+
|       1 | HR         |
|       2 | IT         |
|       3 | FINANCE    |
|       4 | MARKETTING |
+---------+------------+
4 rows in set (0.00 sec)

mysql> select * from employe;
+--------+---------+---------+
| imp_id | em_name | dept_id |
+--------+---------+---------+
|      1 | Rutuja  |       1 |
|      2 | Ram     |       2 |
|      3 | ritik   |       1 |
|      4 | Raju    |    NULL |
|      5 | Siya    |       4 |
+--------+---------+---------+
5 rows in set (0.00 sec)

mysql> select em_name from employe inner join department on employe.dept_id=department.dept_id;
+---------+
| em_name |
+---------+
| Rutuja  |
| ritik   |
| Ram     |
| Siya    |
+---------+
4 rows in set (0.00 sec)

mysql> select em_name from employe left join department on employe.dept_id=department.dept_id;
+---------+
| em_name |
+---------+
| Rutuja  |
| Ram     |
| ritik   |
| Raju    |
| Siya    |
+---------+
5 rows in set (0.00 sec)

mysql> select em_name from employe right join department on employe.dept_id=department.dept_id;
+---------+
| em_name |
+---------+
| Rutuja  |
| ritik   |
| Ram     |
| NULL    |
| Siya    |
+---------+
5 rows in set (0.00 sec)

mysql> select em_name from employe full join department;
+---------+
| em_name |
+---------+
| Rutuja  |
| Rutuja  |
| Rutuja  |
| Rutuja  |
| Ram     |
| Ram     |
| Ram     |
| Ram     |
| ritik   |
| ritik   |
| ritik   |
| ritik   |
| Raju    |
| Raju    |
| Raju    |
| Raju    |
| Siya    |
| Siya    |
| Siya    |
| Siya    |
+---------+
20 rows in set, 1 warning (0.03 sec)

mysql> select em_name from employe cross join department;
+---------+
| em_name |
+---------+
| Rutuja  |
| Rutuja  |
| Rutuja  |
| Rutuja  |
| Ram     |
| Ram     |
| Ram     |
| Ram     |
| ritik   |
| ritik   |
| ritik   |
| ritik   |
| Raju    |
| Raju    |
| Raju    |
| Raju    |
| Siya    |
| Siya    |
| Siya    |
| Siya    |
+---------+
20 rows in set (0.00 sec)

mysql>