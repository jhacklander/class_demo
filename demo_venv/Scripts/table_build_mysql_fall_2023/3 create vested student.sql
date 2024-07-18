use db_sql_fall_2023;

CREATE TABLE tb_vested
(
	emp_id_fk		INT UNSIGNED NOT NULL,
    vesting_dt		DATETIME NOT NULL,
    VESTING_NOTE	TEXT NULL,
    FOREIGN KEY (emp_id_fk) REFERENCES tb_emp(emp_id_pk),
    UNIQUE KEY (emp_id_fk)
);

