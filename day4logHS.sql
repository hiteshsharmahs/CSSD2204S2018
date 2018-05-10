MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> show Customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Customer' at line 1
MariaDB [CSD2204S18]> CREATE TABLE CUSTOMER
    -> CREATE TABLE CUSTOMER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CREATE TABLE CUSTOMER' at line 2
MariaDB [CSD2204S18]> CREATE TABLE CUSTOMER;
ERROR 1050 (42S01): Table 'customer' already exists
MariaDB [CSD2204S18]> SHOW customer
    -> SHOW customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer
SHOW customer' at line 2
MariaDB [CSD2204S18]> SHOW customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer' at line 1
MariaDB [CSD2204S18]> SHOW VARIABLES LIKE 'version';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| version       | 10.1.21-MariaDB |
+---------------+-----------------+
1 row in set (0.05 sec)

MariaDB [CSD2204S18]> MariaDB [test]> SHOW DATABASES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'MariaDB [test]> SHOW DATABASES' at line 1
MariaDB [CSD2204S18]> CREATE DATABASE CSD2204S18;
ERROR 1007 (HY000): Can't create database 'csd2204s18'; database exists
MariaDB [CSD2204S18]> SHOW CSD2204S18 ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CSD2204S18' at line 1
MariaDB [CSD2204S18]> USE CSD2204S18
Database changed
MariaDB [CSD2204S18]> SHOW TABLES ;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABLE Customer(
    ->     -> custId VARCHAR(5) PRIMARY KEY,
    ->     -> name VARCHAR(50),
    ->     -> nickname VARCHAR(10),
    ->     -> city VARCHAR(20),
    ->     -> postalCode VARCHAR(10),
    ->     -> age INTEGER(3));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '-> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCH' at line 2
MariaDB [CSD2204S18]> CREATE TABLE Customer(
    -> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCHAR(10),
    -> 0),
    -> postalCode VARCHAR(10),
    -> age INTEGER(3));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '0),
postalCode VARCHAR(10),
age INTEGER(3))' at line 5
MariaDB [CSD2204S18]> CREATE TABLE Customer(
    -> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCHAR(10),
    -> 0),
    -> postalCode VARCHAR(10),
    -> age INTEGER(3));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '0),
postalCode VARCHAR(10),
age INTEGER(3))' at line 5
MariaDB [CSD2204S18]> CREATE TABLE customer(
    -> custID VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> NICKNAME VARCHAR(10),
    -> city VARCHAR(20),
    -> postalcode VARCHAR(10),
    -> age INTEGER(3));
ERROR 1050 (42S01): Table 'customer' already exists
MariaDB [CSD2204S18]> SHOW custmoer ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'custmoer' at line 1
MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> ------------+-----------------+----------+--------------------------| customerID | name            | nickname | city       | postalCode | age+------------+-----------------+----------+--------------------------|          C01 | Ashley          | Ash      | WDC        |     321200 | 34|          C02 | Bob marley      | Bm       | Toronto    |     100100 | 23|          C03 | Cherlies Theron | Cher     | New York   |     120134 | 20|          C04 | Denial Jack     | DJ       | Brazil     |     341020 | 25|          C05 | Donna newman    | New      | Toronto    |     130120 | 50|          C06 | Eston M.        | M.       | Toronto    |     201023 | 65|          C07 | Bobby Chacko    | Chac     | New York   |     320300 | 70|          C08 | Ashko Charles   | AK       | USA        |     421044 | 72|          C09 | Tony Special    | Specie   | GTA        |     418921 | 62|          C10 | Jack Sp         | Sparrow  | New Jersey |     102301 | 35+------------+-----------------+----------+--------------------------
MariaDB [CSD2204S18]> INSERT INTO customer values (------------+-----------------+----------+--------------------------| customerID | name            | nickname | city       | postalCode | age+------------+-----------------+----------+--------------------------|          C01 | Ashley          | Ash      | WDC        |     321200 | 34|          C02 | Bob marley      | Bm       | Toronto    |     100100 | 23|          C03 | Cherlies Theron | Cher     | New York   |     120134 | 20|          C04 | Denial Jack     | DJ       | Brazil     |     341020 | 25|          C05 | Donna newman    | New      | Toronto    |     130120 | 50|          C06 | Eston M.        | M.       | Toronto    |     201023 | 65|          C07 | Bobby Chacko    | Chac     | New York   |     320300 | 70|          C08 | Ashko Charles   | AK       | USA        |     421044 | 72|          C09 | Tony Special    | Specie   | GTA        |     418921 | 62|          C10 | Jack Sp         | Sparrow  | New Jersey |     102301 | 35+------------+-----------------+----------+--------------------------);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '| customerID | name            | nickname | city       | postalCode | age+------' at line 1
MariaDB [CSD2204S18]> INSERT INTO customer values (------------+-----------------+----------+--------------------------| customerID | name            | nickname | city       | postalCode | age+------------+-----------------+----------+--------------------------|          C01 | Ashley          | Ash      | WDC        |     321200 | 34|          C02 | Bob marley      | Bm       | Toronto    |     100100 | 23|          C03 | Cherlies Theron | Cher     | New York   |     120134 | 20|          C04 | Denial Jack     | DJ       | Brazil     |     341020 | 25|          C05 | Donna newman    | New      | Toronto    |     130120 | 50|          C06 | Eston M.        | M.       | Toronto    |     201023 | 65|          C07 | Bobby Chacko    | Chac     | New York   |     320300 | 70|          C08 | Ashko Charles   | AK       | USA        |     421044 | 72|          C09 | Tony Special    | Specie   | GTA        |     418921 | 62|          C10 | Jack Sp         | Sparrow  | New Jersey |     102301 | 35+------------+-----------------+----------+--------------------------);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '| customerID | name            | nickname | city       | postalCode | age+------' at line 1
MariaDB [CSD2204S18]> INSERT INTO cutomer (cutomerID ,Name, ,nickname, city, postalcode,age)
    -> VALUES (C01,Ashley,Ash,WDC,321200,34)
    -> VALUES (C02,Bob marley,Bm,Toronto,100100,23)
    -> VALUES (C03,Cherlies Theron,Cher,New York,120134,20)
    -> VALUES (C04,Denial Jack,DJ,Brazil,341020,25)
    -> VALUES (C05,Donna newman,New,Toronto,130120,50)
    -> VALUES (C06,Eston M.,M.,Toronto,201023,65)
    -> VALUES (C07,Bobby Chacko,chac,New York,320300,70)
    -> Values (C08,Ashko Charles,AK,USA,421044,72)
    -> VALUES (C09,Tony Special,Specie,GTA,418921,62)
    -> VALUES (C10,Jack Sp,Sparrow,New Jersey,102301,35);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'nickname, city, postalcode,age)
VALUES (C01,Ashley,Ash,WDC,321200,34)
VALUES (C0' at line 1
MariaDB [CSD2204S18]> select8FROM CUSTOMER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select8FROM CUSTOMER' at line 1
MariaDB [CSD2204S18]> select*FROM CUSTOMER;
Empty set (0.05 sec)

MariaDB [CSD2204S18]> DESC CUSTOMER;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(95) | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO cutomer ('c01', 'hiteshwar', 'hitesh','brampton','l5p2h4',22);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''c01', 'hiteshwar', 'hitesh','brampton','l5p2h4',22)' at line 1
MariaDB [CSD2204S18]> INSERT INTO customer ('c01', 'hiteshwar', 'hitesh','brampton','l5p2h4',22);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''c01', 'hiteshwar', 'hitesh','brampton','l5p2h4',22)' at line 1
MariaDB [CSD2204S18]> INSERT INTO customer values('c01', 'hiteshwar', 'hitesh','brampton','l5p2h4',22);
Query OK, 1 row affected (0.09 sec)

MariaDB [CSD2204S18]> select*FROM CUSTOMER;
+--------+-----------+----------+----------+------------+------+
| custID | name      | nickname | city     | postalcode | age  |
+--------+-----------+----------+----------+------------+------+
| c01    | hiteshwar | hitesh   | brampton | l5p2h4     |   22 |
+--------+-----------+----------+----------+------------+------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> VALUES (C01,Ashley,Ash,WDC,321200,34)
    -> VALUES (C0' at line 1
    '> MariaDB [CSD2204S18]> select8FROM CUSTOMER;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select8FROM CUSTOMER' at line 1
    '> VALUES (C01,Ashley,Ash,WDC,321200,34)
    '> VALUES (C0' at line 1
    -> MariaDB [CSD2204S18]> select8FROM CUSTOMER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'VALUES (C01,Ashley,Ash,WDC,321200,34)
VALUES (C0' at line 1
MariaDB [CSD2204S18]' at line 1
MariaDB [CSD2204S18]> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select8FROM CUSTOMER' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> VALUES (C01,Ashley,Ash,WDC,321200,34)
    -> VALUES (C0' at line 1
    '> MariaDB [CSD2204S18]> select8FROM CUSTOMER;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select8FROM CUSTOMER' at line 1
    '> VALUES (C01,Ashley,Ash,WDC,321200,34)
    '> VALUES (C0' at line 1
    -> MariaDB [CSD2204S18]> select8FROM CUSTOMER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'the manual that corresponds to your MariaDB server version for the right syntax ' at line 1
MariaDB [CSD2204S18]> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select8FROM CUSTOMER' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'the manual that corresponds to your MariaDB server version for the right syntax ' at line 1
