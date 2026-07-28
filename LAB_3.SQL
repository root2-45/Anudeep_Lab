lab3_Inner Join,Outer join,Left Outer join,Right Outer Join.


mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bankaccount        |
| college            |
| ecommerce          |
| information_schema |
| joins              |
| mysql              |
| performance_schema |
| rutuja             |
| sakila             |
| student            |
| student_db         |
| sys                |
| world              |
+--------------------+
13 rows in set (0.01 sec)

mysql>  create database student_management_system;
Query OK, 1 row affected (0.04 sec)

mysql> use student_management_system;
Database changed
mysql> create table students (stud_id varchar(10) primary key not null, first_name varchar(10) not null, last_name varchar(10) not null, DOB date not null);
Query OK, 0 rows affected (0.03 sec)

mysql> create table enrollment (en_id varchar(10) not null, stud_id varchar(10) primary key not null, course_id varchar(10) not null, en_date date not null, foreign key (stud_id) references students(stud_id));
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+-------------------------------------+
| Tables_in_student_management_system |
+-------------------------------------+
| enrollment                          |
| students                            |
+-------------------------------------+
2 rows in set (0.00 sec)

mysql> desc students;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| stud_id    | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(10) | NO   |     | NULL    |       |
| last_name  | varchar(10) | NO   |     | NULL    |       |
| DOB        | date        | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into students values ('s101', 'Rutuja', 'Shingote', '2004-04-12'), ('s102', 'Ritik', 'Yadav', '2004-10-17'), ('s103', 'Siya', 'Singh', '2001-07-15'), ('s104', 'Shreeram', 'Singh', '2004-03-29'), ('s105', 'Shikrishn', 'Yadav', '2002-06-10');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from students;
+---------+------------+-----------+------------+
| stud_id | first_name | last_name | DOB        |
+---------+------------+-----------+------------+
| s101    | Rutuja     | Shingote  | 2004-04-12 |
| s102    | Ritik      | Yadav     | 2004-10-17 |
| s103    | Siya       | Singh     | 2001-07-15 |
| s104    | Shreeram   | Singh     | 2004-03-29 |
| s105    | Shikrishn  | Yadav     | 2002-06-10 |
+---------+------------+-----------+------------+
5 rows in set (0.00 sec)

mysql> desc enrollment;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| en_id     | varchar(10) | NO   |     | NULL    |       |
| stud_id   | varchar(10) | NO   | PRI | NULL    |       |
| course_id | varchar(10) | NO   |     | NULL    |       |
| en_date   | date        | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into enrollment values('e101','s101','wdr101','2025-01-18'),('e102','s102','cs102','2025-04-05'),('e103','s103','ai103','2025-03-12'),('e104','s104','ds104','2025-06-22'),('e105','s105','j105','2025-05-28');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from enrollment;
+-------+---------+-----------+------------+
| en_id | stud_id | course_id | en_date    |
+-------+---------+-----------+------------+
| e101  | s101    | wdr101    | 2025-01-18 |
| e102  | s102    | cs102     | 2025-04-05 |
| e103  | s103    | ai103     | 2025-03-12 |
| e104  | s104    | ds104     | 2025-06-22 |
| e105  | s105    | j105      | 2025-05-28 |
+-------+---------+-----------+------------+
5 rows in set (0.00 sec)

mysql> select students.stud_id, students.first_name, students.last_name, enrollment.en_id, enrollment.course_id from students inner join enrollment on students.stud_id=enrollment.stud_id;
+---------+------------+-----------+-------+-----------+
| stud_id | first_name | last_name | en_id | course_id |
+---------+------------+-----------+-------+-----------+
| s101    | Rutuja     | Shingote  | e101  | wdr101    |
| s102    | Ritik      | Yadav     | e102  | cs102     |
| s103    | Siya       | Singh     | e103  | ai103     |
| s104    | Shreeram   | Singh     | e104  | ds104     |
| s105    | Shikrishn  | Yadav     | e105  | j105      |
+---------+------------+-----------+-------+-----------+
5 rows in set (0.01 sec)

mysql> select students.stud_id, students.first_name, students.last_name, enrollment.course_id from students left join enrollment on students.stud_id=enrollment.stud_id;
+---------+------------+-----------+-----------+
| stud_id | first_name | last_name | course_id |
+---------+------------+-----------+-----------+
| s101    | Rutuja     | Shingote  | wdr101    |
| s102    | Ritik      | Yadav     | cs102     |
| s103    | Siya       | Singh     | ai103     |
| s104    | Shreeram   | Singh     | ds104     |
| s105    | Shikrishn  | Yadav     | j105      |
+---------+------------+-----------+-----------+
5 rows in set (0.00 sec)

mysql> select students.stud_id, students.first_name, students.last_name, enrollment.course_id from students right join enrollment on students.stud_id=enrollment.stud_id;
+---------+------------+-----------+-----------+
| stud_id | first_name | last_name | course_id |
+---------+------------+-----------+-----------+
| s101    | Rutuja     | Shingote  | wdr101    |
| s102    | Ritik      | Yadav     | cs102     |
| s103    | Siya       | Singh     | ai103     |
| s104    | Shreeram   | Singh     | ds104     |
| s105    | Shikrishn  | Yadav     | j105      |
+---------+------------+-----------+-----------+
5 rows in set (0.00 sec)

mysql> select students.stud_id, students.first_name, students.last_name, enrollment.course_id from students cross join enrollment;
+---------+------------+-----------+-----------+
| stud_id | first_name | last_name | course_id |
+---------+------------+-----------+-----------+
| s105    | Shikrishn  | Yadav     | wdr101    |
| s104    | Shreeram   | Singh     | wdr101    |
| s103    | Siya       | Singh     | wdr101    |
| s102    | Ritik      | Yadav     | wdr101    |
| s101    | Rutuja     | Shingote  | wdr101    |
| s105    | Shikrishn  | Yadav     | cs102     |
| s104    | Shreeram   | Singh     | cs102     |
| s103    | Siya       | Singh     | cs102     |
| s102    | Ritik      | Yadav     | cs102     |
| s101    | Rutuja     | Shingote  | cs102     |
| s105    | Shikrishn  | Yadav     | ai103     |
| s104    | Shreeram   | Singh     | ai103     |
| s103    | Siya       | Singh     | ai103     |
| s102    | Ritik      | Yadav     | ai103     |
| s101    | Rutuja     | Shingote  | ai103     |
| s105    | Shikrishn  | Yadav     | ds104     |
| s104    | Shreeram   | Singh     | ds104     |
| s103    | Siya       | Singh     | ds104     |
| s102    | Ritik      | Yadav     | ds104     |
| s101    | Rutuja     | Shingote  | ds104     |
| s105    | Shikrishn  | Yadav     | j105      |
| s104    | Shreeram   | Singh     | j105      |
| s103    | Siya       | Singh     | j105      |
| s102    | Ritik      | Yadav     | j105      |
| s101    | Rutuja     | Shingote  | j105      |
+---------+------------+-----------+-----------+
25 rows in set (0.00 sec)

mysql>