alter table OM_PRODUCT add constraint FK_OM_PRODUCT_CATEGORY_ID foreign key (CATEGORY_ID) references OM_PRODUCT_CATEGORY(ID);
create index IDX_OM_PRODUCT_CATEGORY on OM_PRODUCT (CATEGORY_ID);
