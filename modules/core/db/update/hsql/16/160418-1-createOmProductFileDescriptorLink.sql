create table OM_PRODUCT_FILE_DESCRIPTOR_LINK (
    PRODUCT_ID varchar(36) not null,
    FILE_DESCRIPTOR_ID varchar(36) not null,
    primary key (PRODUCT_ID, FILE_DESCRIPTOR_ID)
);
