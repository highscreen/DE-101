CREATE  TABLE superstore.fct_sales ( 
	id                   integer DEFAULT nextval('superstore.fct_orders_id_seq'::regclass) NOT NULL  ,
	order_id             varchar(24)  NOT NULL  ,
	order_date           timestamp  NOT NULL  ,
	customer_id          varchar(24)  NOT NULL  ,
	ship_date            date  NOT NULL  ,
	address_id           integer  NOT NULL  ,
	ship_id              integer  NOT NULL  ,
	revenue              money  NOT NULL  ,
	order_discount       money  NOT NULL  ,
	margin               money  NOT NULL  ,
	basket_items         integer DEFAULT 0 NOT NULL  ,
	CONSTRAINT pk_orders PRIMARY KEY ( id ),
	CONSTRAINT unq_orders_order_id UNIQUE ( order_id ) 
 );

ALTER TABLE superstore.fct_sales ADD CONSTRAINT fk_orders_return FOREIGN KEY ( order_id ) REFERENCES superstore.fct_return( order_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE superstore.fct_sales ADD CONSTRAINT fk_orders_customer FOREIGN KEY ( customer_id ) REFERENCES superstore.dim_customer( customer_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE superstore.fct_sales ADD CONSTRAINT fk_orders_address FOREIGN KEY ( address_id ) REFERENCES superstore.dim_address( address_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE superstore.fct_sales ADD CONSTRAINT fk_orders_shipping FOREIGN KEY ( ship_id ) REFERENCES superstore.dim_shipping( ship_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

COMMENT ON TABLE superstore.fct_sales IS 'Агреггированная информация по заказам';

COMMENT ON COLUMN superstore.fct_sales.id IS 'ИД записи';

COMMENT ON COLUMN superstore.fct_sales.order_id IS 'Номер заказа';

COMMENT ON COLUMN superstore.fct_sales.order_date IS 'Дата заказа';

COMMENT ON COLUMN superstore.fct_sales.customer_id IS 'ИД покупателя';

COMMENT ON COLUMN superstore.fct_sales.ship_date IS 'Дата доставки';

COMMENT ON COLUMN superstore.fct_sales.address_id IS 'ИД адреса доставки';

COMMENT ON COLUMN superstore.fct_sales.ship_id IS 'ИД типа доставки';

COMMENT ON COLUMN superstore.fct_sales.revenue IS 'Выручка за весь заказ';

COMMENT ON COLUMN superstore.fct_sales.order_discount IS 'Скидка по всему заказу';

COMMENT ON COLUMN superstore.fct_sales.margin IS 'Прибыль за весь заказ';

COMMENT ON COLUMN superstore.fct_sales.basket_items IS 'Количество товаров в корзине';
