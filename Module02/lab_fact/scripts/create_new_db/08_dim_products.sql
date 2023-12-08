CREATE  TABLE superstore.dim_products ( 
	id                   integer DEFAULT nextval('superstore.dim_products_id_seq'::regclass) NOT NULL  ,
	product_id           varchar(100)  NOT NULL  ,
	product_name         varchar(100)  NOT NULL  ,
	category_id          integer  NOT NULL  ,
	subcategory_id       integer  NOT NULL  ,
	CONSTRAINT pk_products PRIMARY KEY ( id ),
	CONSTRAINT unq_product_id UNIQUE ( product_id ) 
 );

ALTER TABLE superstore.dim_products ADD CONSTRAINT fk_products_category FOREIGN KEY ( category_id ) REFERENCES superstore.dim_category( category_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

COMMENT ON TABLE superstore.dim_products IS 'Справочник товаров';

COMMENT ON COLUMN superstore.dim_products.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_products.product_id IS 'ИД продукта';

COMMENT ON COLUMN superstore.dim_products.product_name IS 'Наименование продукта';

COMMENT ON COLUMN superstore.dim_products.category_id IS 'ИД категории';

COMMENT ON COLUMN superstore.dim_products.subcategory_id IS 'ИД подкатегории';
