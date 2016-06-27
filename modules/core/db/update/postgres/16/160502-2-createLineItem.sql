alter table OM_LINE_ITEM add constraint FK_OM_LINE_ITEM_PRODUCT_ID foreign key (PRODUCT_ID) references OM_PRODUCT(ID);
alter table OM_LINE_ITEM add constraint FK_OM_LINE_ITEM_ORDER_ID foreign key (ORDER_ID) references OM_ORDER(ID);
create index IDX_OM_LINE_ITEM_ORDER on OM_LINE_ITEM (ORDER_ID);
create index IDX_OM_LINE_ITEM_PRODUCT on OM_LINE_ITEM (PRODUCT_ID);
