#8-20-22
#9-19-23

use db_sql_fall_2023;

INSERT INTO `tb_dept` (`dept_id_pk`, `dept_name`, `dept_description`, `dept_is_active`, `dept_create_dt`) 
VALUES (1,'Accounting','Accounting and Financial Support',_binary '','2021-06-12 14:50:17'),(2,'Management','Management Team',_binary '','2021-06-12 14:50:17'),(3,'Product Development','Product Researh and Development',_binary '','2021-06-12 14:50:17'),(4,'Sales and Marketing','Sales Staff',_binary '','2021-06-12 14:50:17'),(5,'Support','Product Support',_binary '','2021-06-12 14:50:17');
show tables;
SELECT * FROM tb_dept;