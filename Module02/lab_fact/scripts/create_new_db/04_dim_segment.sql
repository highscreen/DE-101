CREATE  TABLE superstore.dim_segment ( 
	id                   integer DEFAULT nextval('superstore.dim_segment_id_seq'::regclass) NOT NULL  ,
	segment_id           integer  NOT NULL  ,
	segment_name         varchar(50)  NOT NULL  ,
	CONSTRAINT pk_segment PRIMARY KEY ( id ),
	CONSTRAINT unq_segment_id UNIQUE ( segment_id ) 
 );

COMMENT ON TABLE superstore.dim_segment IS 'Сегменты покупателей (1 - менеджер, 0 - все остальные)';

COMMENT ON COLUMN superstore.dim_segment.id IS 'ИД записи';

COMMENT ON COLUMN superstore.dim_segment.segment_id IS 'ИД сегмента';

COMMENT ON COLUMN superstore.dim_segment.segment_name IS 'Наименование сегмента';
