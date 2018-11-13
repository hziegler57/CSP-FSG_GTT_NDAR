DECLARE
    v_objectCount NUMBER; 

BEGIN
    SELECT COUNT(*)
    INTO v_objectCount
    FROM all_tables
    WHERE table_name = 'TT_FSG_NDAR_GENERIC'
    AND OWNER = 'HZIEGLER_DB';
    IF v_objectCount = 1 THEN
        EXECUTE IMMEDIATE 'DROP TABLE HZIEGLER_DB.TT_FSG_NDAR_GENERIC';
       END IF;
END;
CREATE GLOBAL TEMPORARY TABLE HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(
  RECORDID            INTEGER                    NOT NULL,
  NUMBER1             INTEGER                    NULL,
  NUMBER2             INTEGER                    NULL,
  NUMBER3             INTEGER                    NULL,
  NUMBER4             INTEGER                    NULL,
  STRING1             VARCHAR2(256 BYTE)         NULL,
  STRING2             VARCHAR2(256 BYTE)         NULL,
  STRING3             VARCHAR2(256 BYTE)         NULL,
  STRING4             VARCHAR2(256 BYTE)         NULL,
  DATE1               TIMESTAMP(3)               NULL,
  DATE2               TIMESTAMP(3)               NULL
);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_RECORDID ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(RECORDID);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_NUM1 ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(NUMBER1);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_NUM2 ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(NUMBER2);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_NUM3 ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(NUMBER3);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_NUM4 ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(NUMBER4);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_STR1 ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(STRING1);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_STR2 ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(STRING2);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_STR3 ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(STRING3);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_STR4 ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(STRING4);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_DATE1 ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(DATE1);

CREATE INDEX HZIEGLER_DB.IDX_TT_NDARGEN_DATE2 ON HZIEGLER_DB.TT_FSG_NDAR_GENERIC
(DATE2);
