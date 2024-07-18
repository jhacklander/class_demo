#8-20-22
#pre 2022
USE db_sql_fall_2023;

CREATE TABLE if not exists tb_orders
(
	order_id_pk			INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	order_date			DATE NOT NULL,
	emp_id_fk			INT UNSIGNED NULL ,
	cust_id_fk			INT UNSIGNED NULL ,
	order_void			BIT NOT NULL DEFAULT 0,
	order_notes			TEXT NULL,
    FOREIGN KEY (emp_id_fk)  REFERENCES tb_emp(emp_id_pk),
    FOREIGN KEY (cust_id_fk) REFERENCES tb_cust(cust_id_pk)
)AUTO_INCREMENT=5000000;
SHOW TABLES;
