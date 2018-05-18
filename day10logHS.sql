MariaDB [csd2204s18]> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  | MUL | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

MariaDB [csd2204s18]> select first_name, last_name,(SEECT department_name FROM departments where d.department_id = department_id) from epmloyees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'department_name FROM departments where d.department_id = department_id) from epm' at line 1
MariaDB [csd2204s18]> select first_name, last_name,(SEECT department_name FROM departments where d.department_id = e.department_id) from epmloyees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'department_name FROM departments where d.department_id = e.department_id) from e' at line 1
MariaDB [csd2204s18]> select first_name, last_name,(SEECT department_name FROM departments d where d.department_id = e.department_id) from epmloyees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'department_name FROM departments d where d.department_id = e.department_id) from' at line 1
MariaDB [csd2204s18]> select first_name, last_name, (SEECT department_name FROM departments d where d.department_id = e.department_id) from epmloyees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'department_name FROM departments d where d.department_id = e.department_id) from' at line 1
MariaDB [csd2204s18]> select first_name, last_name, (SElECT department_name FROM departments d where d.department_id = e.department_id) from epmloyees e;
ERROR 1146 (42S02): Table 'csd2204s18.epmloyees' doesn't exist
MariaDB [csd2204s18]> select first_name, last_name, (SELECT department_name FROM departments d where d.department_id = e.department_id) from epmloyees e;
ERROR 1146 (42S02): Table 'csd2204s18.epmloyees' doesn't exist
MariaDB [csd2204s18]> select first_name, last_name, (SELECT department_name FROM departments d where d.department_id = e.department_id) 'department_name' from epmloyees e;
ERROR 1146 (42S02): Table 'csd2204s18.epmloyees' doesn't exist
MariaDB [csd2204s18]> select first_name, last_name, (SELECT department_name FROM departments d where d.department_id = e.department_id) "department_name" from epmloyees e;
ERROR 1146 (42S02): Table 'csd2204s18.epmloyees' doesn't exist
MariaDB [csd2204s18]> select first_name, last_name, (SELECT department_name FROM departments d where d.department_id = e.department_id) "department_name" from epmloyees e ;
ERROR 1146 (42S02): Table 'csd2204s18.epmloyees' doesn't exist
MariaDB [csd2204s18]> SELECT first_name, last_name,(SELECT department_name FROM departments d where d.department_id = e.department_id) "department_name" from epmloyees e;
ERROR 1146 (42S02): Table 'csd2204s18.epmloyees' doesn't exist
MariaDB [csd2204s18]> SELECT first_name, last_name,(SELECT department_name FROM departments d where d.department_id = e.department_id) "department_name" from employees e;
+-------------+-------------+------------------+
| first_name  | last_name   | department_name  |
+-------------+-------------+------------------+
| Steven      | King        | Executive        |
| Neena       | Kochhar     | Executive        |
| Lex         | De Haan     | Executive        |
| Alexander   | Hunold      | IT               |
| Bruce       | Ernst       | IT               |
| David       | Austin      | IT               |
| Valli       | Pataballa   | IT               |
| Diana       | Lorentz     | IT               |
| Nancy       | Greenberg   | Finance          |
| Daniel      | Faviet      | Finance          |
| John        | Chen        | Finance          |
| Ismael      | Sciarra     | Finance          |
| Jose Manuel | Urman       | Finance          |
| Luis        | Popp        | Finance          |
| Den         | Raphaely    | Purchasing       |
| Alexander   | Khoo        | Purchasing       |
| Shelli      | Baida       | Purchasing       |
| Sigal       | Tobias      | Purchasing       |
| Guy         | Himuro      | Purchasing       |
| Karen       | Colmenares  | Purchasing       |
| Matthew     | Weiss       | Shipping         |
| Adam        | Fripp       | Shipping         |
| Payam       | Kaufling    | Shipping         |
| Shanta      | Vollman     | Shipping         |
| Kevin       | Mourgos     | Shipping         |
| Julia       | Nayer       | Shipping         |
| Irene       | Mikkilineni | Shipping         |
| James       | Landry      | Shipping         |
| Steven      | Markle      | Shipping         |
| Laura       | Bissot      | Shipping         |
| Mozhe       | Atkinson    | Shipping         |
| James       | Marlow      | Shipping         |
| TJ          | Olson       | Shipping         |
| Jason       | Mallin      | Shipping         |
| Michael     | Rogers      | Shipping         |
| Ki          | Gee         | Shipping         |
| Hazel       | Philtanker  | Shipping         |
| Renske      | Ladwig      | Shipping         |
| Stephen     | Stiles      | Shipping         |
| John        | Seo         | Shipping         |
| Joshua      | Patel       | Shipping         |
| Trenna      | Rajs        | Shipping         |
| Curtis      | Davies      | Shipping         |
| Randall     | Matos       | Shipping         |
| Peter       | Vargas      | Shipping         |
| John        | Russell     | Sales            |
| Karen       | Partners    | Sales            |
| Alberto     | Errazuriz   | Sales            |
| Gerald      | Cambrault   | Sales            |
| Eleni       | Zlotkey     | Sales            |
| Peter       | Tucker      | Sales            |
| David       | Bernstein   | Sales            |
| Peter       | Hall        | Sales            |
| Christopher | Olsen       | Sales            |
| Nanette     | Cambrault   | Sales            |
| Oliver      | Tuvault     | Sales            |
| Janette     | King        | Sales            |
| Patrick     | Sully       | Sales            |
| Allan       | McEwen      | Sales            |
| Lindsey     | Smith       | Sales            |
| Louise      | Doran       | Sales            |
| Sarath      | Sewall      | Sales            |
| Clara       | Vishney     | Sales            |
| Danielle    | Greene      | Sales            |
| Mattea      | Marvins     | Sales            |
| David       | Lee         | Sales            |
| Sundar      | Ande        | Sales            |
| Amit        | Banda       | Sales            |
| Lisa        | Ozer        | Sales            |
| Harrison    | Bloom       | Sales            |
| Tayler      | Fox         | Sales            |
| William     | Smith       | Sales            |
| Elizabeth   | Bates       | Sales            |
| Sundita     | Kumar       | Sales            |
| Ellen       | Abel        | Sales            |
| Alyssa      | Hutton      | Sales            |
| Jonathon    | Taylor      | Sales            |
| Jack        | Livingston  | Sales            |
| Kimberely   | Grant       | NULL             |
| Charles     | Johnson     | Sales            |
| Winston     | Taylor      | Shipping         |
| Jean        | Fleaur      | Shipping         |
| Martha      | Sullivan    | Shipping         |
| Girard      | Geoni       | Shipping         |
| Nandita     | Sarchand    | Shipping         |
| Alexis      | Bull        | Shipping         |
| Julia       | Dellinger   | Shipping         |
| Anthony     | Cabrio      | Shipping         |
| Kelly       | Chung       | Shipping         |
| Jennifer    | Dilly       | Shipping         |
| Timothy     | Gates       | Shipping         |
| Randall     | Perkins     | Shipping         |
| Sarah       | Bell        | Shipping         |
| Britney     | Everett     | Shipping         |
| Samuel      | McCain      | Shipping         |
| Vance       | Jones       | Shipping         |
| Alana       | Walsh       | Shipping         |
| Kevin       | Feeney      | Shipping         |
| Donald      | OConnell    | Shipping         |
| Douglas     | Grant       | Shipping         |
| Jennifer    | Whalen      | Administration   |
| Michael     | Hartstein   | Marketing        |
| Pat         | Fay         | Marketing        |
| Susan       | Mavris      | Human Resources  |
| Hermann     | Baer        | Public Relations |
| Shelley     | Higgins     | Accounting       |
| William     | Gietz       | Accounting       |
+-------------+-------------+------------------+
107 rows in set (0.02 sec)

MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employess where salary>(select avg(salary) from employees group by department_id having department_id = e.dpartment_id);
ERROR 1146 (42S02): Table 'csd2204s18.employess' doesn't exist
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary>(select avg(salary) from employees group by department_id having department_id = e.dpartment_id);
ERROR 1054 (42S22): Unknown column 'e.dpartment_id' in 'having clause'
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary>(select avg(salary) from employees group by department_id 	HAVING department_id = e.dpartment_id);
ERROR 1054 (42S22): Unknown column 'e.dpartment_id' in 'having clause'
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary>(select avg(salary) from employees group by department_id 	HAVING department_id = e.department_id);
ERROR 1054 (42S22): Unknown column 'e.department_id' in 'having clause'
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary>(select avg(salary) from employees group by department_id 	HAVING department_id = e2.department_id);
ERROR 1054 (42S22): Unknown column 'e2.department_id' in 'having clause'
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary>(select avg(salary) from employees group by department_id 	HAVING department_id =e2.department_id);
ERROR 1054 (42S22): Unknown column 'e2.department_id' in 'having clause'
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary>(sel ct a    ry) from employees group by department_id 	HAVING department_id = e2.department_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ct a    ry) from employees group by department_id 	HAVING department_id = e2.dep' at line 1
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary>(select avg(salary) from employees group by department_id 	HAVING department_id =e2.department_id);
ERROR 1054 (42S22): Unknown column 'e2.department_id' in 'having clause'
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary>(select avg(salary) from employees group by department_id 	HAVING department_id = e2.department_id);
ERROR 1054 (42S22): Unknown column 'e2.department_id' in 'having clause'
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary>(select avg(salary) from employees group by department_id 	HAVING department_id =e2.department_id);
ERROR 1054 (42S22): Unknown column 'e2.department_id' in 'having clause'
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary > (select avg(salary) from employees group by department_id HAVING department_id =e2.department_id);
ERROR 1054 (42S22): Unknown column 'e2.department_id' in 'having clause'
MariaDB [csd2204s18]> SELECT first_name, last_name, salary from employees where salary > (select avg(salary) from employees group by department_id HAVING department_id =e2.department_id);
ERROR 1054 (42S22): Unknown column 'e2.department_id' in 'having clause'
MariaDB [csd2204s18]> select DISTINCT(slary) FROM employee e1
    -> where 5 = (select count(DISTINCT	 SALARY)
    -> from employees e2
    -> where e2.salary >= e1.salary);
ERROR 1146 (42S02): Table 'csd2204s18.employee' doesn't exist
MariaDB [csd2204s18]> select DISTINCT(salary) FROM employee e1
    -> where 5 = (select count(DISTINCT	 salary)
    -> from employees e2
    -> where e2.salary >= e1.salary);
ERROR 1146 (42S02): Table 'csd2204s18.employee' doesn't exist
MariaDB [csd2204s18]> select DISTINCT(slary) FROM employees e1
    -> where 5 = (select count(DISTINCT	 salary)
    -> from employees e2
    -> where e2.salary >= e1.salary);
ERROR 1054 (42S22): Unknown column 'slary' in 'field list'
MariaDB [csd2204s18]> select DISTINCT(salary) FROM employee e1
    -> where 5 = (select count(DISTINCT	 salary)
    -> from employees e2
    -> where e2.salary >= e1.salary);
ERROR 1146 (42S02): Table 'csd2204s18.employee' doesn't exist
MariaDB [csd2204s18]> select DISTINCT(slary) FROM employees e1
    -> where 5 = (select count(DISTINCT	 salary)
    -> from employees e2
    -> where e2.salary >= e1.salary);
ERROR 1054 (42S22): Unknown column 'slary' in 'field list'
MariaDB [csd2204s18]> select DISTINCT(salary) FROM employees e1
    -> where 5 = (select count(DISTINCT	 salary)
    -> from employees e2
    -> where e2.salary >= e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.01 sec)

MariaDB [csd2204s18]> select department_id, department_name from departments where department_id NOT IN (SELECT DISTINCT(department_id) from epmloyees);
ERROR 1146 (42S02): Table 'csd2204s18.epmloyees' doesn't exist
MariaDB [csd2204s18]> select department_id, department_name from departments where department_id NOT IN (SELECT DISTINCT(department_id) from epmloyees);
ERROR 1146 (42S02): Table 'csd2204s18.epmloyees' doesn't exist
MariaDB [csd2204s18]> select salary from employees order by salary desc;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 17000.00 |
| 14000.00 |
| 13500.00 |
| 13000.00 |
| 12000.00 |
| 12000.00 |
| 12000.00 |
| 11500.00 |
| 11000.00 |
| 11000.00 |
| 11000.00 |
| 10500.00 |
| 10500.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
|  9600.00 |
|  9500.00 |
|  9500.00 |
|  9500.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  8800.00 |
|  8600.00 |
|  8400.00 |
|  8300.00 |
|  8200.00 |
|  8200.00 |
|  8000.00 |
|  8000.00 |
|  8000.00 |
|  7900.00 |
|  7800.00 |
|  7700.00 |
|  7500.00 |
|  7500.00 |
|  7400.00 |
|  7300.00 |
|  7200.00 |
|  7000.00 |
|  7000.00 |
|  7000.00 |
|  6900.00 |
|  6800.00 |
|  6500.00 |
|  6500.00 |
|  6400.00 |
|  6200.00 |
|  6200.00 |
|  6100.00 |
|  6000.00 |
|  6000.00 |
|  5800.00 |
|  4800.00 |
|  4800.00 |
|  4400.00 |
|  4200.00 |
|  4200.00 |
|  4100.00 |
|  4000.00 |
|  3900.00 |
|  3800.00 |
|  3600.00 |
|  3600.00 |
|  3500.00 |
|  3400.00 |
|  3300.00 |
|  3300.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3000.00 |
|  3000.00 |
|  2900.00 |
|  2900.00 |
|  2900.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2700.00 |
|  2700.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2400.00 |
|  2400.00 |
|  2200.00 |
|  2200.00 |
|  2100.00 |
+----------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees order by salary desc limit 3 ;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
+----------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit
