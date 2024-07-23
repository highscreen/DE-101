CREATE SCHEMA IF NOT EXISTS superstore;

CREATE SEQUENCE superstore.dim_address_id_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE superstore.dim_category_id_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE superstore.dim_customer_id_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE superstore.dim_products_id_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE superstore.dim_segment_id_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE superstore.dim_shipping_id_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE superstore.fct_order_product_id_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE superstore.fct_orders_id_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE superstore.fct_return_id_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE  TABLE superstore.dim_address ( 
	id                   integer DEFAULT nextval('superstore.dim_address_id_seq'::regclass) NOT NULL  ,
	address_id           integer  NOT NULL  ,
	country              varchar(100)  NOT NULL  ,
	city                 varchar(100)  NOT NULL  ,
	adstate              varchar(100)  NOT NULL  ,
	postal_code          integer  NOT NULL  ,
	region               varchar(100)  NOT NULL  ,
	CONSTRAINT pk_address PRIMARY KEY ( id ),
	CONSTRAINT unq_address_id UNIQUE ( address_id ) 
 );

CREATE  TABLE superstore.dim_category ( 
	id                   integer DEFAULT nextval('superstore.dim_category_id_seq'::regclass) NOT NULL  ,
	category_id          integer  NOT NULL  ,
	category_name        varchar(100)  NOT NULL  ,
	subcategory_id       integer    ,
	CONSTRAINT pk_category PRIMARY KEY ( id ),
	CONSTRAINT unq_category_id UNIQUE ( category_id ) ,
	CONSTRAINT fk_category FOREIGN KEY ( subcategory_id ) REFERENCES superstore.dim_category( category_id ) ON DELETE RESTRICT ON UPDATE RESTRICT 
 );

CREATE  TABLE superstore.dim_products ( 
	id                   integer DEFAULT nextval('superstore.dim_products_id_seq'::regclass) NOT NULL  ,
	product_id           varchar(100)  NOT NULL  ,
	product_name         varchar(100)  NOT NULL  ,
	category_id          integer  NOT NULL  ,
	subcategory_id       integer  NOT NULL  ,
	CONSTRAINT pk_products PRIMARY KEY ( id ),
	CONSTRAINT unq_product_id UNIQUE ( product_id ) ,
	CONSTRAINT fk_products_category FOREIGN KEY ( category_id ) REFERENCES superstore.dim_category( category_id ) ON DELETE RESTRICT ON UPDATE RESTRICT 
 );

CREATE  TABLE superstore.dim_segment ( 
	id                   integer DEFAULT nextval('superstore.dim_segment_id_seq'::regclass) NOT NULL  ,
	segment_id           integer  NOT NULL  ,
	segment_name         varchar(50)  NOT NULL  ,
	CONSTRAINT pk_segment PRIMARY KEY ( id ),
	CONSTRAINT unq_segment_id UNIQUE ( segment_id ) 
 );

CREATE  TABLE superstore.dim_shipping ( 
	id                   integer DEFAULT nextval('superstore.dim_shipping_id_seq'::regclass) NOT NULL  ,
	ship_id              integer  NOT NULL  ,
	ship_mode            varchar(100)  NOT NULL  ,
	CONSTRAINT pk_shipping PRIMARY KEY ( id ),
	CONSTRAINT unq_shipping_id UNIQUE ( ship_id ) 
 );

CREATE  TABLE superstore.fct_return ( 
	id                   integer DEFAULT nextval('superstore.fct_return_id_seq'::regclass) NOT NULL  ,
	order_id             varchar(24)  NOT NULL  ,
	return_ind           bit  NOT NULL  ,
	CONSTRAINT pk_return PRIMARY KEY ( id ),
	CONSTRAINT unq_return_order_id UNIQUE ( order_id ) 
 );

CREATE  TABLE superstore.dim_customer ( 
	id                   integer DEFAULT nextval('superstore.dim_customer_id_seq'::regclass) NOT NULL  ,
	customer_id          varchar(24)  NOT NULL  ,
	customer_name        varchar(100)  NOT NULL  ,
	segment_id           integer  NOT NULL  ,
	CONSTRAINT pk_customer PRIMARY KEY ( id ),
	CONSTRAINT unq_customer_id UNIQUE ( customer_id ) ,
	CONSTRAINT fk_customer_segment FOREIGN KEY ( segment_id ) REFERENCES superstore.dim_segment( segment_id ) ON DELETE RESTRICT ON UPDATE RESTRICT 
 );

CREATE  TABLE superstore.fct_sales ( 
	id                   integer DEFAULT nextval('superstore.fct_orders_id_seq'::regclass) NOT NULL  ,
	order_id             varchar(24)  NOT NULL  ,
	order_date           timestamp  NOT NULL  ,
	customer_id          varchar(24)  NOT NULL  ,
	ship_date            date  NOT NULL  ,
	address_id           integer  NOT NULL  ,
	ship_id              integer  NOT NULL  ,
	revenue              money  NOT NULL  ,
	basket_items         integer DEFAULT 0 NOT NULL  ,
	order_discount       money  NOT NULL  ,
	margin               money  NOT NULL  ,
	CONSTRAINT pk_orders PRIMARY KEY ( id ),
	CONSTRAINT unq_orders_order_id UNIQUE ( order_id ) ,
	CONSTRAINT fk_orders_return FOREIGN KEY ( order_id ) REFERENCES superstore.fct_return( order_id ) ON DELETE RESTRICT ON UPDATE RESTRICT ,
	CONSTRAINT fk_orders_customer FOREIGN KEY ( customer_id ) REFERENCES superstore.dim_customer( customer_id ) ON DELETE RESTRICT ON UPDATE RESTRICT ,
	CONSTRAINT fk_orders_address FOREIGN KEY ( address_id ) REFERENCES superstore.dim_address( address_id ) ON DELETE RESTRICT ON UPDATE RESTRICT ,
	CONSTRAINT fk_orders_shipping FOREIGN KEY ( ship_id ) REFERENCES superstore.dim_shipping( ship_id ) ON DELETE RESTRICT ON UPDATE RESTRICT 
 );

CREATE  TABLE superstore.fct_orders ( 
	id                   integer DEFAULT nextval('superstore.fct_order_product_id_seq'::regclass) NOT NULL  ,
	order_id             varchar(24)  NOT NULL  ,
	product_id           varchar(100)  NOT NULL  ,
	quantity             integer  NOT NULL  ,
	sales                money DEFAULT 0 NOT NULL  ,
	sale_price           money DEFAULT 0 NOT NULL  ,
	purchase_price       money DEFAULT 0 NOT NULL  ,
	product_discount     double precision DEFAULT 0 NOT NULL  ,
	profit               money DEFAULT 0 NOT NULL  ,
	CONSTRAINT pk_order_product PRIMARY KEY ( id ),
	CONSTRAINT fk_product_orders FOREIGN KEY ( order_id ) REFERENCES superstore.fct_sales( order_id ) ON DELETE RESTRICT ON UPDATE RESTRICT ,
	CONSTRAINT fk_orders_products FOREIGN KEY ( product_id ) REFERENCES superstore.dim_products( product_id ) ON DELETE RESTRICT ON UPDATE RESTRICT 
 );

COMMENT ON TABLE superstore.dim_address IS 'Справочник адресов';

COMMENT ON COLUMN superstore.dim_address.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_address.address_id IS 'ИД адреса';

COMMENT ON COLUMN superstore.dim_address.country IS 'Страна';

COMMENT ON COLUMN superstore.dim_address.city IS 'Город';

COMMENT ON COLUMN superstore.dim_address.adstate IS 'Штат';

COMMENT ON COLUMN superstore.dim_address.postal_code IS 'Индекс';

COMMENT ON COLUMN superstore.dim_address.region IS 'Регион';

COMMENT ON TABLE superstore.dim_category IS 'Справочник категорий-подкатегорий товаров';

COMMENT ON COLUMN superstore.dim_category.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_category.category_id IS 'ИД категории';

COMMENT ON COLUMN superstore.dim_category.category_name IS 'Наименование категории';

COMMENT ON COLUMN superstore.dim_category.subcategory_id IS 'ИД подкатегории';

COMMENT ON TABLE superstore.dim_products IS 'Справочник товаров';

COMMENT ON COLUMN superstore.dim_products.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_products.product_id IS 'ИД продукта';

COMMENT ON COLUMN superstore.dim_products.product_name IS 'Наименование продукта';

COMMENT ON COLUMN superstore.dim_products.category_id IS 'ИД категории';

COMMENT ON COLUMN superstore.dim_products.subcategory_id IS 'ИД подкатегории';

COMMENT ON TABLE superstore.dim_segment IS 'Сегменты покупателей (1 - менеджер, 0 - все остальные)';

COMMENT ON COLUMN superstore.dim_segment.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_segment.segment_id IS 'ИД сегмента';

COMMENT ON COLUMN superstore.dim_segment.segment_name IS 'Наименование сегмента';

COMMENT ON TABLE superstore.dim_shipping IS 'Справочник типов доставки';

COMMENT ON COLUMN superstore.dim_shipping.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_shipping.ship_id IS 'ИД типа доставки';

COMMENT ON COLUMN superstore.dim_shipping.ship_mode IS 'Наименование типа доставки';

COMMENT ON TABLE superstore.fct_return IS 'Таблица с возвратами';

COMMENT ON COLUMN superstore.fct_return.id IS 'ИД записи';

COMMENT ON COLUMN superstore.fct_return.order_id IS 'ИД заказа';

COMMENT ON COLUMN superstore.fct_return.return_ind IS 'Индикатор возврата (1 если заказ возвращен)';

COMMENT ON TABLE superstore.dim_customer IS 'Справочник покупателей';

COMMENT ON COLUMN superstore.dim_customer.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_customer.customer_id IS 'ИД покупателя';

COMMENT ON COLUMN superstore.dim_customer.customer_name IS 'Имя покупателя';

COMMENT ON COLUMN superstore.dim_customer.segment_id IS 'Наименование сегмента';

COMMENT ON TABLE superstore.fct_sales IS 'Агреггированная информация по заказам';

COMMENT ON COLUMN superstore.fct_sales.id IS 'ИД записи';

COMMENT ON COLUMN superstore.fct_sales.order_id IS 'Номер заказа';

COMMENT ON COLUMN superstore.fct_sales.order_date IS 'Дата заказа';

COMMENT ON COLUMN superstore.fct_sales.customer_id IS 'ИД покупателя';

COMMENT ON COLUMN superstore.fct_sales.ship_date IS 'Дата доставки';

COMMENT ON COLUMN superstore.fct_sales.address_id IS 'ИД адреса доставки';

COMMENT ON COLUMN superstore.fct_sales.ship_id IS 'ИД типа доставки';

COMMENT ON COLUMN superstore.fct_sales.revenue IS 'Выручка за весь заказ';

COMMENT ON COLUMN superstore.fct_sales.basket_items IS 'Количество товаров в корзине';

COMMENT ON COLUMN superstore.fct_sales.order_discount IS 'Скидка по всему заказу';

COMMENT ON COLUMN superstore.fct_sales.margin IS 'Прибыль за весь заказ';

COMMENT ON TABLE superstore.fct_orders IS 'Таблица с детализацией по составу заказа';

COMMENT ON COLUMN superstore.fct_orders.id IS 'ИД записи';

COMMENT ON COLUMN superstore.fct_orders.order_id IS 'ИД заказа';

COMMENT ON COLUMN superstore.fct_orders.product_id IS 'ИД продукта';

COMMENT ON COLUMN superstore.fct_orders.quantity IS 'Количество данного товара в заказе';

COMMENT ON COLUMN superstore.fct_orders.sales IS 'Выручка за все товары одного наименования';

COMMENT ON COLUMN superstore.fct_orders.sale_price IS 'Цена продажи единицы товара';

COMMENT ON COLUMN superstore.fct_orders.purchase_price IS 'Цена закупки единицы товара';

COMMENT ON COLUMN superstore.fct_orders.product_discount IS 'Скидка на единицу товара';

COMMENT ON COLUMN superstore.fct_orders.profit IS 'Выручка по товару';

