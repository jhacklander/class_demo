# CREATE TABLE tb_dept table
# 12-7-21
#5-31-22
#8-20-22
#9-19-23

create database if not exists db_sql_fall_2023;
USE  db_sql_fall_2023 ;


#create the deparment table
CREATE TABLE if not exists tb_dept
(
	 dept_id_pk   			INT  UNSIGNED AUTO_INCREMENT,
	 dept_name   			VARCHAR(50) NOT NULL,
	 dept_description   	TEXT  NULL,
	 dept_is_active   		BIT  NOT NULL DEFAULT 1,
	 dept_create_dt   		TIMESTAMP  NULL DEFAULT CURRENT_TIMESTAMP,
     PRIMARY KEY (dept_id_pk),
     UNIQUE KEY (dept_name)
);
show databases;
