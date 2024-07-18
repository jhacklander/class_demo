#CREATE TABLE tb_emp
# 12-7-21
#8-20-22

USE db_mysql_2023_fall;
drop table if exists tb_emp;
CREATE TABLE   if not exists tb_emp (
	 emp_id_pk   		INT UNSIGNED NOT NULL AUTO_INCREMENT,
	 emp_name   		VARCHAR(50) NOT NULL,
	 emp_hire_dt   		DATE NOT NULL,
	 emp_reports_to_fk  INT UNSIGNED NULL,
	 emp_is_active   	BIT NOT NULL DEFAULT 1,
	 emp_notes   		TEXT NULL,
	 emp_create_dt   	TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP,
	 dept_id_fk   		INT UNSIGNED NULL,
	PRIMARY KEY (emp_id_pk),
    UNIQUE (emp_name),
    FOREIGN KEY (emp_reports_to_fk) REFERENCES tb_emp (emp_id_pk),
    
	foreign key (dept_id_fk) references tb_dept(dept_id_pk)
) AUTO_INCREMENT=100
;