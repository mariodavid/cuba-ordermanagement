alter table OM_ORDER add constraint FK_OM_ORDER_CUSTOMER_ID foreign key (CUSTOMER_ID) references OM_CUSTOMER(ID);
create index IDX_OM_ORDER_CUSTOMER on OM_ORDER (CUSTOMER_ID);
