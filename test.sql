mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| pucsdStudents      |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use pucsdStudents
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed

DROP TABLE IF EXISTS `studentdata`;
CREATE TABLE studentData (Name varchar(20),Roll_no varchar(20),Address text,Mobile_Number varchar(30),PAN Number varchar(30));
mysql> show tables;
+-------------------------+
| Tables_in_pucsdStudents |
+-------------------------+
| studentData             |
+-------------------------+
1 row in set (0.01 sec)

mysql> show columns from studentData;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Name          | varchar(20) | YES  |     | NULL    |       |
| Roll_no       | varchar(30) | YES  |     | NULL    |       |
| Address       | text        | YES  |     | NULL    |       |
| Mobile_Number | varchar(30) | YES  |     | NULL    |       |
| PAN_Number    | varchar(20) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.22 sec)

mysql> INSERT INTO studentData(Name,Roll_no,Address,Mobile_Number,PAN_Number)VALUES('Shivdeep Avhad','N20111029', 'Dighi Pune', '9511839676', 'AYZPA0925E');
Query OK, 1 row affected (0.25 sec)


mysql> INSERT INTO `studentData` (`Name`, `Roll_no`, `Address`, `Mobile_Number`, `PAN_Number`) VALUES ('Shivdeep Avhad', 'N20111029', 'Dighi Pune', '8412892042', 'AYZPA0679E'), ('Amar Mohite', 'N20110111', 'Shivajinagar Pune', '8412763252', 'AYZPA0427E'),
('Tushar Ghatol', 'N20110178', 'Alandi Pune', '9511763252', 'AYZPA1627E'), ('Abhijeet', 'N20110029', 'Dighi Pune', '8212893456',
 'AYZPA8735E'), ('Shivraj', 'N20110031', 'Viman nagar Pune', '9512893456', 'AYZPAI8325E'), ('Siddharth Avhad', 'N20110131', 'Sai
 park Dighi Pune', '9512878456', 'AYZPA8025E'), ('Omkar Jadhav', 'N20110020', 'Bhosari Pune', '8812893542', 'AYZPA0609E'), ('Prathamesh Jadhav', 'N20111080', 'Shivajinagar Pune', '9512893542', 'AYZPA9809E'), ('Suraj ', 'N20110080', 'Audh Pune', '9112893342', 'AYZPB9819E'), ('Pravin', 'N20110010', 'Nashik', '9511673342', 'AYZPB9519E'), ('Sagar', 'N20110740', 'Pune', '9111673342', 'AYZPB9095E');
Query OK, 11 rows affected (0.12 sec)
Records: 11  Duplicates: 0  Warnings: 0

mysql> select * from studentData;
+-------------------+-----------+---------------------+---------------+-------------+
| Name              | Roll_no   | Address             | Mobile_Number | PAN_Number  |
+-------------------+-----------+---------------------+---------------+-------------+
| Shivdeep Avhad    | N20111029 | Dighi Pune          | 9511839676    | AYZPA0925E  |
| Shivdeep Avhad    | N20111029 | Dighi Pune          | 8412892042    | AYZPA0679E  |
| Amar Mohite       | N20110111 | Shivajinagar Pune   | 8412763252    | AYZPA0427E  |
| Tushar Ghatol     | N20110178 | Alandi Pune         | 9511763252    | AYZPA1627E  |
| Abhijeet          | N20110029 | Dighi Pune          | 8212893456    | AYZPA8735E  |
| Shivraj           | N20110031 | Viman nagar Pune    | 9512893456    | AYZPAI8325E |
| Siddharth Avhad   | N20110131 | Sai park Dighi Pune | 9512878456    | AYZPA8025E  |
| Omkar Jadhav      | N20110020 | Bhosari Pune        | 8812893542    | AYZPA0609E  |
| Prathamesh Jadhav | N20111080 | Shivajinagar Pune   | 9512893542    | AYZPA9809E  |
| Suraj             | N20110080 | Audh Pune           | 9112893342    | AYZPB9819E  |
| Pravin            | N20110010 | Nashik              | 9511673342    | AYZPB9519E  |
| Sagar             | N20110740 | Pune                | 9111673342    | AYZPB9095E  |
+-------------------+-----------+---------------------+---------------+-------------+
12 rows in set (0.00 sec)



