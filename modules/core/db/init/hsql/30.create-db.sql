insert into OM_PRODUCT_CATEGORY
(NAME, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Tablet', 1, '2015-11-14 20:08:40', null, null, null, '13bcc20d-1975-1137-913b-be17e74de1e3', '2015-11-14 20:08:40', 'admin');

insert into OM_PRODUCT_CATEGORY
(NAME, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Not so smart phone', 1, '2015-11-14 20:08:55', null, null, null, '38ca386a-f23c-700b-e3fc-dbe2b1e0370f', '2015-11-14 20:08:55', 'admin');

insert into OM_PRODUCT_CATEGORY
(NAME, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Smartphone', 1, '2015-11-14 20:08:45', null, null, null, 'db45e357-64ab-5d6b-154f-86a8adc78e0f', '2015-11-14 20:08:45', 'admin');



insert into OM_PRODUCT
(NAME, CATEGORY_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Nokia 8810', '38ca386a-f23c-700b-e3fc-dbe2b1e0370f', 1, '2015-11-14 20:09:07', null, null, null, '43170403-a54b-6303-74e6-ed1ff36857b9', '2015-11-14 20:09:07', 'admin');

insert into OM_PRODUCT
(NAME, CATEGORY_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Apple iPad Air', '13bcc20d-1975-1137-913b-be17e74de1e3', 2, '2015-11-14 20:11:29', 'admin', null, null, '607c8f27-5b4a-15aa-4e5b-66efec5f4415', '2015-11-14 20:09:59', 'admin');

insert into OM_PRODUCT
(NAME, CATEGORY_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Samsung Galaxy Tab S2', '13bcc20d-1975-1137-913b-be17e74de1e3', 1, '2015-11-14 20:10:15', null, null, null, '888972d1-2883-6bf8-e4e8-88e71c5a589d', '2015-11-14 20:10:15', 'admin');

insert into OM_PRODUCT
(NAME, CATEGORY_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Samsung Galaxy S6', 'db45e357-64ab-5d6b-154f-86a8adc78e0f', 1, '2015-11-14 20:12:04', null, null, null, '88a71e28-4156-39b0-385e-d5a2d88ef73c', '2015-11-14 20:12:04', 'admin');

insert into OM_PRODUCT
(NAME, CATEGORY_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Apple iPhone 6', 'db45e357-64ab-5d6b-154f-86a8adc78e0f', 1, '2015-11-14 20:12:22', null, null, null, '926aabad-2a53-c7fa-dc23-9ce343cebc5b', '2015-11-14 20:12:22', 'admin');

insert into OM_PRODUCT
(NAME, CATEGORY_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Apple iPhone 6S', 'db45e357-64ab-5d6b-154f-86a8adc78e0f', 1, '2015-11-14 20:09:38', null, null, null, 'a022e550-b708-2e0d-7be8-b9f3ecadbd68', '2015-11-14 20:09:38', 'admin');

insert into OM_PRODUCT
(NAME, CATEGORY_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Nokia 6310', '38ca386a-f23c-700b-e3fc-dbe2b1e0370f', 1, '2015-11-14 20:09:19', null, null, null, 'adbfdf9a-a5c5-27b2-7479-fb7fbb04d3d5', '2015-11-14 20:09:19', 'admin');



insert into OM_CUSTOMER
(NAME, FIRSTNAME, STREET, POSTCODE, CITY, STATE, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Witte', 'Jim', '4368 Ashmor Drive', '56401', 'Manchester', 'NH', 3, '2015-11-17 19:03:06', 'admin', null, null, '4f12c1ad-ba45-edce-5141-a61e2fffb949', '2015-11-17 18:51:06', 'admin');

insert into OM_CUSTOMER
(NAME, FIRSTNAME, STREET, POSTCODE, CITY, STATE, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Square', 'Misty', '3367 Edgewood Road', '71603', 'Omaha', 'NE', 1, '2015-11-17 19:03:36', null, null, null, '52d83aa7-fd2d-485d-9185-cd98e37a22a6', '2015-11-17 19:03:36', 'admin');

insert into OM_CUSTOMER
(NAME, FIRSTNAME, STREET, POSTCODE, CITY, STATE, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Amon', 'Kristen C.', '485 Libby Street', '90025', 'West Los Angeles', 'CA', 1, '2015-11-17 19:04:06', null, null, null, 'b1f9102d-c870-7bc7-1535-a27e1bc89d30', '2015-11-17 19:04:06', 'admin');


insert into OM_ORDER
(ORDER_DATE, CUSTOMER_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('2015-11-18', '4f12c1ad-ba45-edce-5141-a61e2fffb949', 1, '2015-11-17 19:06:53', null, null, null, 'b107176e-ab74-8102-c781-efb75b12f805', '2015-11-17 19:06:53', 'admin');

insert into OM_LINE_ITEM
(POSITION_, PRODUCT_ID, QUANTITY, QUANTITY_UNIT, UNIT_PRICE, TOTAL_PRICE, ORDER_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (1, '43170403-a54b-6303-74e6-ed1ff36857b9', 1, 'pc', 199.00, 199.00, 'b107176e-ab74-8102-c781-efb75b12f805', 1, '2015-11-17 19:06:53', null, null, null, '8e69ca36-0bb4-38f4-83fe-76cad6444288', '2015-11-17 19:06:53', 'admin');


insert into OM_ORDER
(ORDER_DATE, CUSTOMER_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('2015-11-15', '52d83aa7-fd2d-485d-9185-cd98e37a22a6', 1, '2015-11-17 19:07:42', null, null, null, 'd40fa9db-6171-ebe5-909d-6072a4ba5ced', '2015-11-17 19:07:42', 'admin');
insert into OM_LINE_ITEM
(POSITION_, PRODUCT_ID, QUANTITY, QUANTITY_UNIT, UNIT_PRICE, TOTAL_PRICE, ORDER_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (1, 'a022e550-b708-2e0d-7be8-b9f3ecadbd68', 1, 'pc', 499.00, 499.00, 'd40fa9db-6171-ebe5-909d-6072a4ba5ced', 1, '2015-11-17 19:07:42', null, null, null, '3298e766-e717-7ef7-ccbf-2d4727902a77', '2015-11-17 19:07:42', 'admin');
insert into OM_LINE_ITEM
(POSITION_, PRODUCT_ID, QUANTITY, QUANTITY_UNIT, UNIT_PRICE, TOTAL_PRICE, ORDER_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (2, 'adbfdf9a-a5c5-27b2-7479-fb7fbb04d3d5', 1, 'pc', 149.00, 149.00, 'd40fa9db-6171-ebe5-909d-6072a4ba5ced', 1, '2015-11-17 19:07:42', null, null, null, 'c9f59770-fad5-12fb-f72c-4b58d898877d', '2015-11-17 19:07:42', 'admin');


-- create users



-- access groups
insert into SEC_GROUP
(NAME, PARENT_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('US', '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', 1, '2016-02-03 08:43:14', null, null, null, '6eef1d32-0794-7c39-d79c-6c1b889d4a46', '2016-02-03 08:43:14', 'admin');



insert into SEC_GROUP
(NAME, PARENT_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Midwest', '6eef1d32-0794-7c39-d79c-6c1b889d4a46', 1, '2016-02-03 12:48:53', null, null, null, 'f76d4b65-ed25-17e8-293b-c5548aa2f16d', '2016-02-03 12:48:53', 'admin');

insert into SEC_CONSTRAINT
(ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROUP_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('om$Order', 'join {E}.customer c', 'c.state = ''NE'' or c.state = ''IL''', 'f76d4b65-ed25-17e8-293b-c5548aa2f16d', 1, '2016-02-03 13:01:26', null, null, null, '2b242cd4-1474-125d-3b01-1c221690d6b1', '2016-02-03 13:01:26', 'admin');

insert into SEC_CONSTRAINT
(ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROUP_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('om$Customer', null, '{E}.state = ''NE'' or {E}.state = ''IL''', 'f76d4b65-ed25-17e8-293b-c5548aa2f16d', 1, '2016-02-03 13:00:43', null, null, null, '76df0e61-33c3-b1d8-b467-62d9078230e5', '2016-02-03 13:00:43', 'admin');




insert into SEC_GROUP
(NAME, PARENT_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Northeast', '6eef1d32-0794-7c39-d79c-6c1b889d4a46', 1, '2016-02-03 08:43:24', null, null, null, '51afb332-2cd8-fd77-0218-5eb040d1edc9', '2016-02-03 08:43:24', 'admin');

insert into SEC_CONSTRAINT
(ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROUP_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('om$Order', 'join {E}.customer c', 'c.state = ''NH'' or c.state = ''MA''', '51afb332-2cd8-fd77-0218-5eb040d1edc9', 2, '2016-02-03 09:05:05', 'admin', null, null, '9601ad8f-9ba8-fbcd-b06c-96c3df53dadd', '2016-02-03 08:59:52', 'admin');

insert into SEC_CONSTRAINT
(ENTITY_NAME, JOIN_CLAUSE, WHERE_CLAUSE, GROUP_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('om$Customer', null, '{E}.state = ''NH'' or {E}.state = ''MA''', '51afb332-2cd8-fd77-0218-5eb040d1edc9', 1, '2016-02-03 08:58:26', null, null, null, 'f10aaade-4316-968c-e797-bf700374c153', '2016-02-03 08:58:26', 'admin');

-- roles

-- Master Data Manager


insert into SEC_ROLE
(NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Master Data Manager', null, 'Responsible for managing the master data of the ERP system. Mainly products and categories.', 0, null, 1, '2016-02-02 12:43:45', null, null, null, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', '2016-02-02 12:43:45', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$ProductCategory:delete', 1, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:43:45', null, null, null, '57745e7a-51aa-83c4-0b21-a385c61eacba', '2016-02-02 12:43:45', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Order:delete', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:49:09', null, null, null, '5fbc2a7b-7996-0ff8-66ea-e86bbfc7a1cc', '2016-02-02 12:49:09', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$ProductCategory:read', 1, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:43:45', null, null, null, '3bbad5b3-d764-f753-8960-22c1eba402d8', '2016-02-02 12:43:45', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$ProductCategory:update', 1, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:43:45', null, null, null, '46ca6ce6-c543-ad08-5f42-e3f9c9f2b08d', '2016-02-02 12:43:45', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Customer:delete', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:49:09', null, null, null, 'dac2f334-9fe2-fa39-8703-c563b93711bd', '2016-02-02 12:49:09', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Customer:read', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:49:09', null, null, null, '3fdef0ce-b8e8-c8a8-2e3b-c218f418f581', '2016-02-02 12:49:09', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Order:read', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:49:09', null, null, null, 'e9ddb3d8-886f-527f-78e8-4ba3c3822ef6', '2016-02-02 12:49:09', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Customer:create', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:49:09', null, null, null, '714021e4-3645-0722-f7ea-58df0f9109cc', '2016-02-02 12:49:09', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Product:read', 1, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:43:45', null, null, null, '5aa4fc23-98a1-b02c-99f9-e9e3de1080cd', '2016-02-02 12:43:45', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (10, 'om$Customer.browse', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 2, '2016-02-02 12:50:01', 'admin', null, null, '644436f9-1039-de77-3f5c-c0da3e68e20d', '2016-02-02 12:46:45', 'jesse');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$ProductCategory:create', 1, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:43:45', null, null, null, 'ef1aff18-57d4-9cd5-b331-4af2e6e00f33', '2016-02-02 12:43:45', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Customer:update', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:49:09', null, null, null, '7ce4f4e2-1867-d05e-6d8a-b8f02f471f76', '2016-02-02 12:49:09', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Product:create', 1, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:43:45', null, null, null, 'a1115b1e-27d9-7104-1dbc-1a6716275f5b', '2016-02-02 12:43:45', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Product:delete', 1, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:43:45', null, null, null, 'fd6dd883-9fc2-07b6-d9b9-b73221771973', '2016-02-02 12:43:45', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (10, 'om$Order.browse', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 2, '2016-02-02 12:50:01', 'admin', null, null, '055aa057-7d04-2c61-fb61-e24e7b988f69', '2016-02-02 12:46:45', 'jesse');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (10, 'om$ProductCategory.browse', 1, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 2, '2016-02-02 12:50:01', 'admin', null, null, '797382b5-5402-6e80-93c4-9bd3dcfa0fbe', '2016-02-02 12:48:23', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Order:create', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:49:09', null, null, null, '1a62b081-6acc-3dac-8cdd-f734e3d8ebaa', '2016-02-02 12:49:09', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Product:update', 1, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:43:45', null, null, null, '2f8676d9-cf16-e805-b0a4-4cc52fd37c07', '2016-02-02 12:43:45', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (10, 'administration', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:46:45', null, null, null, 'f2cfe1b0-6698-513c-3b46-b95887a735f8', '2016-02-02 12:46:45', 'jesse');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Order:update', 0, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 1, '2016-02-02 12:49:09', null, null, null, 'd9f587de-1fb9-967a-4e89-167d0d4d800c', '2016-02-02 12:49:09', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (10, 'om$Product.browse', 1, 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', 2, '2016-02-02 12:50:01', 'admin', null, null, '971690cd-9b45-a476-911d-a59e9efa97af', '2016-02-02 12:48:23', 'admin');


-- sales

insert into SEC_ROLE
(NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('Sales', null, null, 0, null, 1, '2016-02-03 08:30:11', null, null, null, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$LineItem:delete', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '5e1d3dc1-4f6a-36ca-ee9a-2fabe57d1c50', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$ProductCategory:create', 0, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '8b8c34c3-c517-baeb-fbf5-ece60d0a9caa', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$LineItem:create', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '6faaa0fd-8dc9-8bbd-f2ae-69f002743dab', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Product:update', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, 'a8f41884-58de-ce0a-6eae-8717beeb0235', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$ProductCategory:delete', 0, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, 'dcde861c-17ff-37f0-328d-d1bb4f34e48c', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Customer:read', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '57782040-5fa0-8bbc-d8c4-7bb1c29d2365', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Order:read', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '3c656b5a-19c4-4a39-bb20-cc9b2feef65d', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Order:delete', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, 'f2da9712-8f9e-2fdb-9783-4db86a7b90e1', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Customer:update', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '76721118-f8fc-4289-ba48-213ab5ddce3e', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Customer:delete', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, 'e6416cc1-c891-9c46-11b3-c3d0076bd970', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (10, 'administration', 0, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '33fe0bf7-10f5-7a3b-d8ac-cd214d661f9c', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (10, 'application', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '391cd5e3-ceab-ea51-8150-bc2abf2daba2', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Order:update', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '2e313a4e-68f7-458b-9c57-4b4caed05298', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$ProductCategory:read', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, 'af01ad64-bb7c-7244-86c6-9443ccb212de', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$LineItem:update', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '5b69bf10-ea40-298b-f20f-874c4e3e45b9', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Order:create', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '00665fd2-5fcb-e85e-2bb0-d9e747b7a7b6', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$ProductCategory:update', 0, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '314f7e49-1357-1f20-0d82-1943b3795ebe', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$LineItem:read', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '9b2a5e99-9115-dc3e-417a-7ca80b2548b5', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Product:read', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '75ee4a9b-587a-dcc4-ef3e-6a7417f5752f', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Customer:create', 1, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '3d2f06c8-d4ff-59b7-8e44-e4920fe51d42', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Product:create', 0, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, '1aca2bfa-64bc-cee6-9210-e1606a962a32', '2016-02-03 08:30:11', 'admin');

insert into SEC_PERMISSION
(PERMISSION_TYPE, TARGET, VALUE, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values (20, 'om$Product:delete', 0, 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', 1, '2016-02-03 08:30:11', null, null, null, 'a431ee32-1bb0-2f49-f4c8-7f0333c9c046', '2016-02-03 08:30:11', 'admin');



-- users

insert into SEC_USER
(LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('walter', 'walter', 'd6fb28fc8792482e544e2c45d6b9e1c4c19ba67b', 'Walter White', 'Walter', 'White', 'Hartwell', null, 'walter.white@CUBa-seCurity.com', 'en', null, null, true, false, '51afb332-2cd8-fd77-0218-5eb040d1edc9', null, 2, '2016-02-03 08:43:39', 'admin', null, null, '65e33c58-b7c8-7f5b-b35c-884c7a1483c6', '2016-02-03 08:28:55', 'admin');

insert into SEC_USER
(LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('saul', 'saul', 'fa47674a4d9e48034293e083ab14c8504037c591', 'Saul Goodman', 'Saul', 'Goodman', null, 'Head of Sales', 'saul.goodman@CUBa-seCurity.com', 'en', null, null, true, false, 'f76d4b65-ed25-17e8-293b-c5548aa2f16d', null, 10, '2016-02-03 12:49:32', 'admin', null, null, 'd953f129-90b6-cbc3-e10c-3b31f8060e92', '2016-02-01 12:22:23', 'admin');

insert into SEC_USER
(LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('jesse', 'jesse', 'a2f894b8c3932c6f4dc7a34d7d2c8db0d8a4057c', 'Jesse Pinkman', 'Jesse', 'Pinkman', null, null, 'jesse.pinkman@CUBa-seCurity.com', 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null, 2, '2016-02-02 12:44:58', 'admin', null, null, 'fd46268a-f736-fcf3-02b9-360356e79828', '2016-02-02 12:44:29', 'admin');


-- user substitutions
insert into SEC_USER_SUBSTITUTION
(USER_ID, SUBSTITUTED_USER_ID, START_DATE, END_DATE, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('d953f129-90b6-cbc3-e10c-3b31f8060e92', '65e33c58-b7c8-7f5b-b35c-884c7a1483c6', null, null, 1, '2016-02-03 12:57:27', null, null, null, '38b11b64-dfe5-d921-0798-2c82c18dce56', '2016-02-03 12:57:27', 'admin');




-- user roles

insert into SEC_USER_ROLE
(USER_ID, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('d953f129-90b6-cbc3-e10c-3b31f8060e92', 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', null, null, null, null, null, '899e8ca6-5538-6001-6437-1e64cc8bb3b5', null, null);


insert into SEC_USER_ROLE
(USER_ID, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('65e33c58-b7c8-7f5b-b35c-884c7a1483c6', 'e2a0b7f8-b4b5-43c0-0c14-64abf9008a80', null, null, null, null, null, 'b7b929e0-3024-73d9-27fc-9160b3f295b0', null, null);


insert into SEC_USER_ROLE
(USER_ID, ROLE_ID, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ID, CREATE_TS, CREATED_BY)
values ('fd46268a-f736-fcf3-02b9-360356e79828', 'cb05e9e1-0efc-8ad9-2d3e-e6d51f538fd3', null, null, null, null, null, '2a704672-c872-28ae-1a6f-491c3a259a98', null, null);
