#8-20-22

use db_sql_fall_2023;

create table tb_order_detail
(
	order_id_fk 	int unsigned not null,
    prod_id_fk  	int unsigned not null,
    ord_dtl_void	bit(1) not null default 0,
    ord_dtl_qty		decimal(22,4) not null default 0,
    ord_dtl_notes	text null,
    foreign key (order_id_fk) references tb_orders(order_id_pk),
    foreign key (prod_id_fk) references tb_prod(prod_id_pk),
    unique key (order_id_fk,prod_id_fk)
)
;
SHOW TABLES;