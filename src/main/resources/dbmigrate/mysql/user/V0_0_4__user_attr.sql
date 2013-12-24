

-------------------------------------------------------------------------------
--  user attr
-------------------------------------------------------------------------------
CREATE TABLE USER_ATTR(
        ID BIGINT auto_increment,
	BOOLEAN_VALUE INTEGER,
	DATE_VALUE TIMESTAMP,
	LONG_VALUE BIGINT,
	DOUBLE_VALUE DOUBLE,
	STRING_VALUE VARCHAR(200),
	USER_BASE_ID BIGINT,
	USER_SCHEMA_ID BIGINT,
	SCOPE_ID VARCHAR(50),
        CONSTRAINT PK_USER_ATTR PRIMARY KEY(ID),
        CONSTRAINT FK_USER_ATTR_USER_BASE FOREIGN KEY(USER_BASE_ID) REFERENCES USER_BASE(ID),
	CONSTRAINT FK_USER_ATTR_USER_SCHEMA FOREIGN KEY(USER_SCHEMA_ID) REFERENCES USER_SCHEMA(ID)
) engine=innodb;
