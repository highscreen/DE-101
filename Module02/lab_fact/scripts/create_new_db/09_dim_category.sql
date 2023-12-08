CREATE  TABLE superstore.dim_category ( 
	id                   integer DEFAULT nextval('superstore.dim_category_id_seq'::regclass) NOT NULL  ,
	category_id          integer  NOT NULL  ,
	category_name        varchar(100)  NOT NULL  ,
	subcategory_id       integer    ,
	CONSTRAINT pk_category PRIMARY KEY ( id ),
	CONSTRAINT unq_category_id UNIQUE ( category_id ) 
 );

ALTER TABLE superstore.dim_category ADD CONSTRAINT fk_category FOREIGN KEY ( subcategory_id ) REFERENCES superstore.dim_category( category_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

COMMENT ON TABLE superstore.dim_category IS 'Справочник категорий-подкатегорий товаров';

COMMENT ON COLUMN superstore.dim_category.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_category.category_id IS 'ИД категории';

COMMENT ON COLUMN superstore.dim_category.category_name IS 'Наименование категории';

COMMENT ON COLUMN superstore.dim_category.subcategory_id IS 'ИД подкатегории';
