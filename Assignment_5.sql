mysql> create database rutuja;
Query OK, 1 row affected (0.02 sec)

mysql> use rutuja;
Database changed
mysql> create table employe(id varchar(10) primary key,deptname varchar(20)not null,salary int(10) not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table employe(id varchar(10) primary key,deptname varchar(20)not null,salary int(10) not null);
Query OK, 0 rows affected, 1 warning (0.10 sec)

mysql> insert into employe values('E101','HR',20000),('E102','HR',35000),('E103','IT',50000),('E104','IT',15000);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from employe;
+------+----------+--------+
| id   | deptname | salary |
+------+----------+--------+
| E101 | HR       |  20000 |
| E102 | HR       |  35000 |
| E103 | IT       |  50000 |
| E104 | IT       |  15000 |
+------+----------+--------+
4 rows in set (0.00 sec)

mysql> select deptname,avg(salary)as avgsalary from employe group by deptname;
+----------+------------+
| deptname | avgsalary  |
+----------+------------+
| HR       | 27500.0000 |
| IT       | 32500.0000 |
+----------+------------+
2 rows in set (0.03 sec)

mysql> select deptname,count(*) as total employe from employe group by deptname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'employe from employe group by deptname' at line 1
mysql> select deptname,count(*) as totalemploye from employe group by deptname;
+----------+--------------+
| deptname | totalemploye |
+----------+--------------+
| HR       |            2 |
| IT       |            2 |
+----------+--------------+
2 rows in set (0.03 sec)

mysql> select deptname,sum(*) as totalsalary from employe group by deptname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*) as totalsalary from employe group by deptname' at line 1
mysql> select deptname,sum(salary) as totalsalary from employe group by deptname;
+----------+-------------+
| deptname | totalsalary |
+----------+-------------+
| HR       |       55000 |
| IT       |       65000 |
+----------+-------------+
2 rows in set (0.00 sec)

mysql> select deptname,max(salary) as highestsalary from employe group by deptname;
+----------+---------------+
| deptname | highestsalary |
+----------+---------------+
| HR       |         35000 |
| IT       |         50000 |
+----------+---------------+
2 rows in set (0.00 sec)

mysql> select deptname, avg(salary) as avgsalary from employe group by deptname;
+----------+------------+
| deptname | avgsalary  |
+----------+------------+
| HR       | 27500.0000 |
| IT       | 32500.0000 |
+----------+------------+
2 rows in set (0.00 sec)

mysql> select deptname, avg(salary) as avgsalary from employe group by deptname having avg(salary)>10000;
+----------+------------+
| deptname | avgsalary  |
+----------+------------+
| HR       | 27500.0000 |
| IT       | 32500.0000 |
+----------+------------+
2 rows in set (0.00 sec)

mysql> select * from employe;
+------+----------+--------+
| id   | deptname | salary |
+------+----------+--------+
| E101 | HR       |  20000 |
| E102 | HR       |  35000 |
| E103 | IT       |  50000 |
| E104 | IT       |  15000 |
+------+----------+--------+
4 rows in set (0.00 sec)

mysql> insert into employe values('E105','marketing',20000);
Query OK, 1 row affected (0.04 sec)

mysql> select * from employe;
+------+-----------+--------+
| id   | deptname  | salary |
+------+-----------+--------+
| E101 | HR        |  20000 |
| E102 | HR        |  35000 |
| E103 | IT        |  50000 |
| E104 | IT        |  15000 |
| E105 | marketing |  20000 |
+------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select deptname, count(*) as totalemploye from employe group by deptname having count(*)>=2;
+----------+--------------+
| deptname | totalemploye |
+----------+--------------+
| HR       |            2 |
| IT       |            2 |
+----------+--------------+
2 rows in set (0.00 sec)

mysql> select deptname, count(*) as totalemploye from employe group by deptname having count(*)>=1;
+-----------+--------------+
| deptname  | totalemploye |
+-----------+--------------+
| HR        |            2 |
| IT        |            2 |
| marketing |            1 |
+-----------+--------------+
3 rows in set (0.00 sec)

mysql> select deptname, avg(salary) as avgsalary from employe group by deptname;
+-----------+------------+
| deptname  | avgsalary  |
+-----------+------------+
| HR        | 27500.0000 |
| IT        | 32500.0000 |
| marketing | 20000.0000 |
+-----------+------------+
3 rows in set (0.00 sec)

mysql> select deptname, avg(salary) as avgsalary from employe group by deptname having avg(salary)<10000;
Empty set (0.00 sec)

mysql> select * from employe;
+------+-----------+--------+
| id   | deptname  | salary |
+------+-----------+--------+
| E101 | HR        |  20000 |
| E102 | HR        |  35000 |
| E103 | IT        |  50000 |
| E104 | IT        |  15000 |
| E105 | marketing |  20000 |
+------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select deptname, min(salary) as minimum salary from employe group by deptname having min(salary)<=20000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'salary from employe group by deptname having min(salary)<=20000' at line 1
mysql> select deptname, min(salary) as minimumsalary from employe group by deptname having min(salary)<=20000;
+-----------+---------------+
| deptname  | minimumsalary |
+-----------+---------------+
| HR        |         20000 |
| IT        |         15000 |
| marketing |         20000 |
+-----------+---------------+
3 rows in set (0.00 sec)

mysql>