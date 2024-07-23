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

insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (1, 'Furniture', NULL);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (2, 'Office Supplies', NULL);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (3, 'Technology', NULL);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (4, 'Technology', NULL);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (5, 'Bookcases', 1);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (6, 'Chairs', 1);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (7, 'Labels', 2);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (8, 'Tables', 1);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (9, 'Storage', 2);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (10, 'Furnishings', 1);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (11, 'Art', 2);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (12, 'Phones', 3);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (13, 'Binders', 2);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (14, 'Appliances', 2);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (15, 'Paper', 2);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (16, 'Accessories', 4);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (17, 'Envelopes', 2);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (18, 'Fasteners', 2);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (19, 'Supplies', 2);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (20, 'Machines', 4);
insert into superstore.dim_category(category_id, category_name, subcategory_id ) values (21, 'Copiers', 4);
