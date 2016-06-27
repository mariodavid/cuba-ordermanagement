alter table OM_PRODUCT_FILE_DESCRIPTOR_LINK add constraint FK_OPFDL_PRODUCT foreign key (PRODUCT_ID) references OM_PRODUCT(ID);
alter table OM_PRODUCT_FILE_DESCRIPTOR_LINK add constraint FK_OPFDL_FILE_DESCRIPTOR foreign key (FILE_DESCRIPTOR_ID) references SYS_FILE(ID);
