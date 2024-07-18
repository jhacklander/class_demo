CREATE DATABASE IF NOT EXISTS db_sql_fall_2023;
use db_sql_fall_2023;
CREATE TABLE IF NOT EXISTS tb_emp
(
	emp_id_pk INT UNSIGNED PRIMARY KEY	
		AUTO_INCREMENT,
	emp_name 	VARCHAR(50) NOT NULL,
	emp_hire_dt date NOT NULL,
	emp_reports_to_fk INT UNSIGNED NULL,
	emp_is_active BIT(1) NOT NULL DEFAULT b'1',
	emp_notes TEXT,
	emp_create_dt TIMESTAMP NOT NULL DEFAULT
		CURRENT_TIMESTAMP,
	dept_id_fk INT UNSIGNED NULL,
	foreign KEY (emp_reports_to_fk)
		REFERENCES tb_emp(emp_id_pk),
	foreign KEY (dept_id_fk)
		REFERENCES tb_dept(dept_id_pk)
)AUTO_INCREMENT=100
;
SHOW TABLES;

