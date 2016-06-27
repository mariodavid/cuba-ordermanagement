create table OM_LINE_ITEM (
    ID uuid,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    POSITION_ integer not null,
    PRODUCT_ID uuid not null,
    QUANTITY integer not null,
    QUANTITY_UNIT varchar(50) not null,
    UNIT_PRICE decimal(19, 2) not null,
    TOTAL_PRICE decimal(19, 2) not null,
    ORDER_ID uuid not null,
    --
    primary key (ID)
);
