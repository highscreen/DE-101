CREATE  TABLE superstore.fct_return ( 
	id                   integer DEFAULT nextval('superstore.fct_return_id_seq'::regclass) NOT NULL  ,
	order_id             varchar(24)  NOT NULL  ,
	return_ind           bit  NOT NULL  ,
	CONSTRAINT pk_return PRIMARY KEY ( id ),
	CONSTRAINT unq_return_order_id UNIQUE ( order_id ) 
 );

COMMENT ON TABLE superstore.fct_return IS 'Таблица с возвратами';

COMMENT ON COLUMN superstore.fct_return.id IS 'ИД записи';

COMMENT ON COLUMN superstore.fct_return.order_id IS 'ИД заказа';

COMMENT ON COLUMN superstore.fct_return.return_ind IS 'Индикатор возврата (1 если заказ возвращен)';
