#8-20-22
use db_sql_fall_2023;

create table if not exists tb_prod
(
	prod_id_pk		int unsigned not null 
		primary key auto_increment,
	prod_name		varchar(8) not null unique,
    prod_desc		varchar(100) not null unique,
    prod_list_price	decimal(18,4) not null default 0,
    prod_notes		text null,
    prod_is_active	bit(1) not null default 1,
    prod_create_dt	timestamp not null default current_timestamp
)auto_increment=1000000;
SHOW TABLES;