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
| student            |
| student_db         |
| sys                |
| world              |
+--------------------+
10 rows in set (0.08 sec)

mysql> select database ecommerce;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ecommerce' at line 1
mysql> show tables;
ERROR 1046 (3D000): No database selected
mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
+---------------------+
1 row in set (0.04 sec)

mysql> select* from customer;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select* from customer where pincode between 4 and 6;
Empty set (0.00 sec)

mysql> select* from customer where pincode between 1 and 6
    -> select* from customer where pincode between 1 and 6;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select* from customer where pincode between 1 and 6' at line 2
mysql> select* from customer where pincode between 100000 and 200000;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select* from customer where pincode not between 100000 and 200000;
Empty set (0.00 sec)

mysql> select* from customer;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where name between 'a' and 'f';
Empty set (0.03 sec)

mysql> select * from customer where name between 'l' and 'z';
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where name not between 'a' and 'f';
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select* from customer;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where cust_id in ('c101','c103');
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where pincode in (123456);
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where pincode not in (123456);
Empty set (0.00 sec)

mysql> select * from customer where name is null;
Empty set (0.00 sec)

mysql> select * from customer where name is not null;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer order by pincode;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer order by name;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.03 sec)

mysql> select * from customer order by name desc;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
| C101    | rutuja  | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer order by picode desc;
ERROR 1054 (42S22): Unknown column 'picode' in 'order clause'
mysql> select * from customer order by pincode desc;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer order by pincode desc limit 3;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select* from customer;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select* from customer where city ='kurla' and pincode=123456;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select* from customer where city ='kurla' or pincode=123456;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select* from customer;
+---------+---------+-------+---------+
| cust_id | name    | city  | pincode |
+---------+---------+-------+---------+
| C101    | rutuja  | kurla |  123456 |
| C102    | rutujaa | kurla |  123456 |
| C103    | rutujaa | kurla |  123456 |
+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select sum('pincode')from customer;
+----------------+
| sum('pincode') |
+----------------+
|              0 |
+----------------+
1 row in set, 3 warnings (0.03 sec)

mysql> select avg('pincode') from customer;
+----------------+
| avg('pincode') |
+----------------+
|              0 |
+----------------+
1 row in set, 3 warnings (0.00 sec)

mysql> select count('pincode') from customer;
+------------------+
| count('pincode') |
+------------------+
|                3 |
+------------------+
1 row in set (0.04 sec)

mysql> select max('pincode') from customer;
+----------------+
| max('pincode') |
+----------------+
| pincode        |
+----------------+
1 row in set (0.00 sec)

mysql> select min('pincode') from customer;
+----------------+
| min('pincode') |
+----------------+
| pincode        |
+----------------+
1 row in set (0.00 sec)

mysql>