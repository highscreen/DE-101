CREATE  TABLE superstore.fct_orders ( 
	id                   integer DEFAULT nextval('superstore.fct_order_product_id_seq'::regclass) NOT NULL  ,
	order_id             varchar(24)  NOT NULL  ,
	product_id           varchar(100)  NOT NULL  ,
	product_price        money  NOT NULL  ,
	quantity             integer  NOT NULL  ,
	product_discount     money  NOT NULL  ,
	profit               money  NOT NULL  ,
	CONSTRAINT pk_order_product PRIMARY KEY ( id )
 );

ALTER TABLE superstore.fct_orders ADD CONSTRAINT fk_product_orders FOREIGN KEY ( order_id ) REFERENCES superstore.fct_sales( order_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE superstore.fct_orders ADD CONSTRAINT fk_orders_products FOREIGN KEY ( product_id ) REFERENCES superstore.dim_products( product_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

COMMENT ON TABLE superstore.fct_orders IS 'Таблица с детализацией по составу заказа';

COMMENT ON COLUMN superstore.fct_orders.id IS 'ИД записи';

COMMENT ON COLUMN superstore.fct_orders.order_id IS 'ИД заказа';

COMMENT ON COLUMN superstore.fct_orders.product_id IS 'ИД продукта';

COMMENT ON COLUMN superstore.fct_orders.product_price IS 'Цена единицы товара';

COMMENT ON COLUMN superstore.fct_orders.quantity IS 'Количество данного товара в заказе';

COMMENT ON COLUMN superstore.fct_orders.product_discount IS 'Скидка на единицу товара';

COMMENT ON COLUMN superstore.fct_orders.profit IS 'Выручка по товару';
