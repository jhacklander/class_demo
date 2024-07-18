CREATE DATABASE IF NOT EXISTS db_employee;
SHOW DATABASES;

# CREATE TABLE
USE db_employee;
CREATE TABLE IF NOT EXISTS tb_employees 
(
	emp_id_pk INTEGER PRIMARY KEY AUTO_INCREMENT, 
    emp_name TEXT UNIQUE NOT NULL
);
SHOW TABLES;
#inserting data into table
USE db_employee;
INSERT into tb_employees (emp_name) VALUE ('Bob');
INSERT into tb_employees (emp_name) VALUE ('Alice'), ('Billy'),
	('Jerry'), ('Kate'), ('Betty');
#Query Table
USE db_employee;
SELECT *
	FROM tb_employees;
#Modifying Row Data
use db_employee;
UPDATE tb_employees
SET emp_name = 'Cathy'
    WHERE
		emp_id_pk = 5;
#verify
SELECT *
	FROM tb_employees;
#Delete row data
use db_employee;
SELECT *
FROM tb_employees
WHERE emp_id_pk = 3;
DELETE FROM tb_employees
WHERE emp_id_pk = 3;

use db_employee;
SELECT
	emp_id_pk as ID,
    emp_name as EMP_NAMES
FROM
	tb_employees
ORDER BY
	emp_name DESC;