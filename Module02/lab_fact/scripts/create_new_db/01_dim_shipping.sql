CREATE  TABLE superstore.dim_shipping ( 
	id                   integer DEFAULT nextval('superstore.dim_shipping_id_seq'::regclass) NOT NULL  ,
	ship_id              integer  NOT NULL  ,
	ship_mode            varchar(100)  NOT NULL  ,
	CONSTRAINT pk_shipping PRIMARY KEY ( id ),
	CONSTRAINT unq_shipping_id UNIQUE ( ship_id ) 
 );

COMMENT ON TABLE superstore.dim_shipping IS 'Справочник типов доставки';

COMMENT ON COLUMN superstore.dim_shipping.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_shipping.ship_id IS 'ИД типа доставки';

COMMENT ON COLUMN superstore.dim_shipping.ship_mode IS 'Наименование типа доставки';
