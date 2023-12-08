CREATE  TABLE superstore.dim_customer ( 
	id                   integer DEFAULT nextval('superstore.dim_customer_id_seq'::regclass) NOT NULL  ,
	customer_id          varchar(24)  NOT NULL  ,
	customer_name        varchar(100)  NOT NULL  ,
	segment_id           integer  NOT NULL  ,
	CONSTRAINT pk_customer PRIMARY KEY ( id ),
	CONSTRAINT unq_customer_id UNIQUE ( customer_id ) 
 );

ALTER TABLE superstore.dim_customer ADD CONSTRAINT fk_customer_segment FOREIGN KEY ( segment_id ) REFERENCES superstore.dim_segment( segment_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

COMMENT ON TABLE superstore.dim_customer IS 'Справочник покупателей';

COMMENT ON COLUMN superstore.dim_customer.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_customer.customer_id IS 'ИД покупателя';

COMMENT ON COLUMN superstore.dim_customer.customer_name IS 'Имя покупателя';

COMMENT ON COLUMN superstore.dim_customer.segment_id IS 'Наименование сегмента';
