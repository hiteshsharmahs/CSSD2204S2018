MariaDB [(none)]> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
| orders               |
| persons              |
+----------------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> use table customer;
ERROR 1049 (42000): Unknown database 'table'
MariaDB [csd2204s18]> use customer;
ERROR 1049 (42000): Unknown database 'customer'
MariaDB [csd2204s18]> SELECT8 FROM customer order by custid DESC LIMIT 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SELECT8 FROM customer order by custid DESC LIMIT 3' at line 1
MariaDB [csd2204s18]> select customer ;
ERROR 1054 (42S22): Unknown column 'customer' in 'field list'
MariaDB [csd2204s18]> select customer from csd2204s18;
ERROR 1146 (42S02): Table 'csd2204s18.csd2204s18' doesn't exist
MariaDB [csd2204s18]> selct * from cutomer
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selct * from cutomer' at line 1
MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Dona Newman     | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.05 sec)

MariaDB [csd2204s18]> select * from (select * from customer order by custId desc limit 3) at t order by custId asc limit3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 't order by custId asc limit3' at line 1
MariaDB [csd2204s18]> select * from (select * from customer order by custId desc limit 3) at t order by custId asc limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 't order by custId asc limit 3' at line 1
MariaDB [csd2204s18]> select * from (select * from customer order by custId desc limit 3) as t order by custId asc limit 3;
+--------+---------------+----------+------------+------------+------+
| custId | name          | nickname | city       | postalcode | age  |
+--------+---------------+----------+------------+------------+------+
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
| C09    | Tony Special  | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp       | Sparrow  | New Jersey | 102301     |   35 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from customer group by country ;
ERROR 1054 (42S22): Unknown column 'country' in 'group statement'
MariaDB [csd2204s18]> select * from cutomer group by country;
ERROR 1146 (42S02): Table 'csd2204s18.cutomer' doesn't exist
MariaDB [csd2204s18]> select * from customer group by city;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city , count(city) "no. of customers" FROM customer group by city having city LIKE 'new%';
+------------+------------------+
| city       | no. of customers |
+------------+------------------+
| New Jersey |                1 |
| New York   |                2 |
+------------+------------------+
2 rows in set (0.03 sec)

MariaDB [csd2204s18]> select city , count(city) "no. of customers" FROM customer group by city having city LIKE 'new%' OR city = 'toronto' ;
+------------+------------------+
| city       | no. of customers |
+------------+------------------+
| New Jersey |                1 |
| New York   |                2 |
| Toronto    |                3 |
+------------+------------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city , count(city) "no. of customers" FROM customer group by city having count(city) >2;
+---------+------------------+
| city    | no. of customers |
+---------+------------------+
| Toronto |                3 |
+---------+------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGXP 'N$';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'REGXP 'N$'' at line 1
MariaDB [csd2204s18]> select * from customer where name REGEXP 'N$';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| C05    | Dona Newman     | New      | Toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.03 sec)

MariaDB [csd2204s18]> SELECT * FROM CUSTOMER WHERE NAME REGEXP '^...l';
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalcode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM CUSTOMER WHERE NAME REGEXP '^[a-z]';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Dona Newman     | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM CUSTOMER WHERE NAME REGEXP '^A*';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Dona Newman     | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM CUSTOMER WHERE NAME REGEXP '^A+';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| C01    | Ashley        | Ash      | WDC  | 321200     |   34 |
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM CUSTOMER WHERE NAME REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Dona Newman     | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.01 sec)

MariaDB [csd2204s18]> SELECT * FROM CUSTOMER WHERE city REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Dona Newman     | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM CUSTOMER WHERE CITY rLIKE '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Dona Newman     | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select curdate();
+------------+
| curdate()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> select NOW;
ERROR 1054 (42S22): Unknown column 'NOW' in 'field list'
MariaDB [csd2204s18]> select NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2018-05-14 09:15:19 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> ALTER TABLE customer ADD COLUMN dob DATE;
Query OK, 0 rows affected (0.55 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> DESC CUSTOMER;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| dob        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> UPDATE customer SET dob ='1996-04-15' WHERE custID ='c02';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE customer SET dob ='1996-04-15' WHERE custID ='c03';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE customer SET dob ='1996-04-15' WHERE custID ='c04';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE customer SET dob ='1996-04-15' WHERE custID ='c05';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE customer SET dob ='1996-04-15' WHERE custID ='c06';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE customer SET dob ='1996-04-15' WHERE custID ='c07';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE customer SET dob ='1997-08-10' WHERE custID ='c08';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE customer SET dob ='1985-08-28' WHERE custID ='c09';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE customer SET dob ='1995-07-17' WHERE custID ='c10';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from customer ;
+--------+-----------------+----------+------------+------------+------+------------+
| custId | name            | nickname | city       | postalcode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | NULL       |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 | 1996-04-15 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 | 1996-04-15 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | 1996-04-15 |
| C05    | Dona Newman     | New      | Toronto    | 130120     |   50 | 1996-04-15 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 | 1996-04-15 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | 1996-04-15 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 | 1997-08-10 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | 1985-08-28 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | 1995-07-17 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name, dob ,TIMESTAMPDIFF(YEAR,dob,curdate()) "age" FROM CUSTOMER; 
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | NULL       | NULL |
| Bob Marley      | 1996-04-15 |   22 |
| Cherlies Theron | 1996-04-15 |   22 |
| Denial Jack     | 1996-04-15 |   22 |
| Dona Newman     | 1996-04-15 |   22 |
| Eston M.        | 1996-04-15 |   22 |
| Bobby Chacko    | 1996-04-15 |   22 |
| Ashko Charles   | 1997-08-10 |   20 |
| Tony Special    | 1985-08-28 |   32 |
| Jack Sp         | 1995-07-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name, dob ,TIMESTAMPDIFF(DAY,dob,curdate()) "age" FROM CUSTOMER; 
+-----------------+------------+-------+
| name            | dob        | age   |
+-----------------+------------+-------+
| Ashley          | NULL       |  NULL |
| Bob Marley      | 1996-04-15 |  8064 |
| Cherlies Theron | 1996-04-15 |  8064 |
| Denial Jack     | 1996-04-15 |  8064 |
| Dona Newman     | 1996-04-15 |  8064 |
| Eston M.        | 1996-04-15 |  8064 |
| Bobby Chacko    | 1996-04-15 |  8064 |
| Ashko Charles   | 1997-08-10 |  7582 |
| Tony Special    | 1985-08-28 | 11947 |
| Jack Sp         | 1995-07-17 |  8337 |
+-----------------+------------+-------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name, dob ,TIMESTAMPDIFF(YEAR,dob,curdate())  FROM CUSTOMER HAVING ='22' ; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '='22'' at line 1
MariaDB [csd2204s18]> select name, dob ,TIMESTAMPDIFF(YEAR,dob,curdate())  FROM CUSTOMER HAVING =22 ; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '=22' at line 1
MariaDB [csd2204s18]> select name, dob ,TIMESTAMPDIFF(YEAR,dob,curdate())  FROM CUSTOMER HAVING = 22 ; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '= 22' at line 1
MariaDB [csd2204s18]> select name, dob ,TIMESTAMPDIFF(YEAR,dob,curdate())  FROM CUSTOMER HAVING = 22; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '= 22' at line 1
MariaDB [csd2204s18]> select name, dob ,TIMESTAMPDIFF(YEAR,dob,curdate()) "AGE"  FROM CUSTOMER HAVING = 22; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '= 22' at line 1
MariaDB [csd2204s18]> select name, dob ,TIMESTAMPDIFF(YEAR,dob,curdate()) "age"  FROM CUSTOMER HAVING = 22; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '= 22' at line 1
MariaDB [csd2204s18]> select name, dob ,TIMESTAMPDIFF(YEAR,dob,curdate()) "age"  FROM CUSTOMER HAVING age = 22; 
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Bob Marley      | 1996-04-15 |   22 |
| Cherlies Theron | 1996-04-15 |   22 |
| Denial Jack     | 1996-04-15 |   22 |
| Dona Newman     | 1996-04-15 |   22 |
| Eston M.        | 1996-04-15 |   22 |
| Bobby Chacko    | 1996-04-15 |   22 |
| Jack Sp         | 1995-07-17 |   22 |
+-----------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit
