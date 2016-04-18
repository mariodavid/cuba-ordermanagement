-- begin OM_PRODUCT_CATEGORY
create table OM_PRODUCT_CATEGORY (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    --
    primary key (ID)
)^
-- end OM_PRODUCT_CATEGORY
-- begin OM_PRODUCT
create table OM_PRODUCT (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    CATEGORY_ID varchar(36) not null,
    DESCRIPTION longvarchar,
    --
    primary key (ID)
)^
-- end OM_PRODUCT
-- begin OM_LINE_ITEM
create table OM_LINE_ITEM (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    POSITION_ integer not null,
    PRODUCT_ID varchar(36) not null,
    QUANTITY integer not null,
    QUANTITY_UNIT varchar(50) not null,
    UNIT_PRICE decimal(19, 2) not null,
    TOTAL_PRICE decimal(19, 2) not null,
    ORDER_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end OM_LINE_ITEM
-- begin OM_ORDER
create table OM_ORDER (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORDER_DATE date not null,
    CUSTOMER_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end OM_ORDER
-- begin OM_CUSTOMER
create table OM_CUSTOMER (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    FIRSTNAME varchar(255),
    STREET varchar(255) not null,
    POSTCODE varchar(255) not null,
    CITY varchar(255) not null,
    --
    primary key (ID)
)^
-- end OM_CUSTOMER
-- begin OM_PRODUCT_FILE_DESCRIPTOR_LINK
create table OM_PRODUCT_FILE_DESCRIPTOR_LINK (
    PRODUCT_ID varchar(36) not null,
    FILE_DESCRIPTOR_ID varchar(36) not null,
    primary key (PRODUCT_ID, FILE_DESCRIPTOR_ID)
)^
-- end OM_PRODUCT_FILE_DESCRIPTOR_LINK
