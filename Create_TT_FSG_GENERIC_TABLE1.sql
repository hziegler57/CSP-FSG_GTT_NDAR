DECLARE
    v_objectCount NUMBER; 

BEGIN
    SELECT COUNT(*)
    INTO v_objectCount
    FROM all_tables
    WHERE table_name = 'TT_FSG_GENERIC_TABLE1'
    AND OWNER = 'HZIEGLER_DB';
    IF v_objectCount = 1 THEN
        EXECUTE IMMEDIATE 'DROP TABLE HZIEGLER_DB.TT_FSG_GENERIC_TABLE1';
       END IF;
END;
CREATE GLOBAL TEMPORARY TABLE HZIEGLER_DB.TT_FSG_GENERIC_TABLE1
(
  NUMBER_ID           NUMBER(12)                 NULL,
  NUMBER_INT          INTEGER                    NULL,
  CHAR_ID1            VARCHAR2(25 BYTE)          NULL,
  CHAR_ID2            VARCHAR2(25 BYTE)          NULL,
  CHAR_STR1           VARCHAR2(256 BYTE)         NULL,
  CHAR_STR2           VARCHAR2(256 BYTE)         NULL,
  CHAR_STR3           VARCHAR2(256 BYTE)         NULL,
  CHAR_STR4           VARCHAR2(256 BYTE)         NULL,
  CHAR_STR5           VARCHAR2(256 BYTE)         NULL,
  CHAR_STR6           VARCHAR2(256 BYTE)         NULL,
  CHAR_STR7           VARCHAR2(256 BYTE)         NULL,
  CHAR_STR8           VARCHAR2(256 BYTE)         NULL,
  CHAR_STR9           VARCHAR2(256 BYTE)         NULL,
  CHAR_STR10          VARCHAR2(256 BYTE)         NULL,
  DATE_FIELD1         TIMESTAMP(3)               NULL,
  DATE_FIELD2         TIMESTAMP(3)               NULL,
  DATE_FIELD3         TIMESTAMP(3)               NULL,
  DATE_FIELD4         TIMESTAMP(3)               NULL,
  DATE_FIELD5         TIMESTAMP(3)               NULL
);

CREATE INDEX HZIEGLER_DB.IDX_TT_GENTYPE1_NUMBER_ID ON HZIEGLER_DB.TT_FSG_GENERIC_TABLE1
(NUMBER_ID);

CREATE INDEX HZIEGLER_DB.IDX_TT_GENTYPE1_NUMBER_INT ON HZIEGLER_DB.TT_FSG_GENERIC_TABLE1
(NUMBER_INT);

CREATE INDEX HZIEGLER_DB.IDX_TT_GENTYPE1_CHAR_ID1 ON HZIEGLER_DB.TT_FSG_GENERIC_TABLE1
(CHAR_ID1);

CREATE INDEX HZIEGLER_DB.IDX_TT_GENTYPE1_CHAR_ID2 ON HZIEGLER_DB.TT_FSG_GENERIC_TABLE1
(CHAR_ID2);

CREATE INDEX HZIEGLER_DB.IDX_TT_GENTYPE1_CHAR_STR1 ON HZIEGLER_DB.TT_FSG_GENERIC_TABLE1
(CHAR_STR1);

CREATE INDEX HZIEGLER_DB.IDX_TT_GENTYPE1_CHAR_STR2 ON HZIEGLER_DB.TT_FSG_GENERIC_TABLE1
(CHAR_STR2);

CREATE INDEX HZIEGLER_DB.IDX_TT_GENTYPE1_DATE_FIELD1 ON HZIEGLER_DB.TT_FSG_GENERIC_TABLE1
(DATE_FIELD1);

CREATE INDEX HZIEGLER_DB.IDX_TT_GENTYPE1_DATE_FIELD2 ON HZIEGLER_DB.TT_FSG_GENERIC_TABLE1
(DATE_FIELD2);

CREATE INDEX HZIEGLER_DB.IDX_TT_GENTYPE1_DATE_FIELD3 ON HZIEGLER_DB.TT_FSG_GENERIC_TABLE1
(DATE_FIELD3);
