-- begin OM_PRODUCT
alter table OM_PRODUCT add constraint FK_OM_PRODUCT_CATEGORY_ID foreign key (CATEGORY_ID) references OM_PRODUCT_CATEGORY(ID)^
create index IDX_OM_PRODUCT_CATEGORY on OM_PRODUCT (CATEGORY_ID)^
-- end OM_PRODUCT
-- begin OM_LINE_ITEM
alter table OM_LINE_ITEM add constraint FK_OM_LINE_ITEM_PRODUCT_ID foreign key (PRODUCT_ID) references OM_PRODUCT(ID)^
alter table OM_LINE_ITEM add constraint FK_OM_LINE_ITEM_ORDER_ID foreign key (ORDER_ID) references OM_ORDER(ID)^
create index IDX_OM_LINE_ITEM_ORDER on OM_LINE_ITEM (ORDER_ID)^
create index IDX_OM_LINE_ITEM_PRODUCT on OM_LINE_ITEM (PRODUCT_ID)^
-- end OM_LINE_ITEM
-- begin OM_ORDER
alter table OM_ORDER add constraint FK_OM_ORDER_CUSTOMER_ID foreign key (CUSTOMER_ID) references OM_CUSTOMER(ID)^
create index IDX_OM_ORDER_CUSTOMER on OM_ORDER (CUSTOMER_ID)^
-- end OM_ORDER
-- begin OM_PRODUCT_FILE_DESCRIPTOR_LINK
alter table OM_PRODUCT_FILE_DESCRIPTOR_LINK add constraint FK_OPFDL_PRODUCT foreign key (PRODUCT_ID) references OM_PRODUCT(ID)^
alter table OM_PRODUCT_FILE_DESCRIPTOR_LINK add constraint FK_OPFDL_FILE_DESCRIPTOR foreign key (FILE_DESCRIPTOR_ID) references SYS_FILE(ID)^
-- end OM_PRODUCT_FILE_DESCRIPTOR_LINK
