create table OM_CUSTOMER (
    ID uuid,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
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
);
