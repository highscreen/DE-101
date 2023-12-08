CREATE  TABLE superstore.dim_address ( 
	id                   integer DEFAULT nextval('superstore.dim_address_id_seq'::regclass) NOT NULL  ,
	address_id           integer  NOT NULL  ,
	country              varchar(100)  NOT NULL  ,
	street               varchar(100)  NOT NULL  ,
	city                 varchar(100)  NOT NULL  ,
	adstate              varchar(100)  NOT NULL  ,
	postal_code          integer  NOT NULL  ,
	CONSTRAINT pk_address PRIMARY KEY ( id ),
	CONSTRAINT unq_address_id UNIQUE ( address_id ) 
 );

COMMENT ON TABLE superstore.dim_address IS 'Справочник адресов';

COMMENT ON COLUMN superstore.dim_address.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_address.address_id IS 'ИД адреса';

COMMENT ON COLUMN superstore.dim_address.country IS 'Страна';

COMMENT ON COLUMN superstore.dim_address.street IS 'Улица';

COMMENT ON COLUMN superstore.dim_address.city IS 'Город';

COMMENT ON COLUMN superstore.dim_address.adstate IS 'Штат';

COMMENT ON COLUMN superstore.dim_address.postal_code IS 'Индекс';
