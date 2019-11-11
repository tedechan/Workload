/******************************************************************************/
/***         Generated by IBExpert 2019.9.29.1 03.11.2019 15:30:40          ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES UTF8;

SET CLIENTLIB 'D:\Documents\workload\MainWPFProject\Workload\Workload\DatabaseEssentials\fbembed.dll';

CREATE DATABASE 'D:\Documents\workload\MainWPFProject\Workload\Workload\DatabaseEssentials\wlbaseRenewed2.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 1024
DEFAULT CHARACTER SET UTF8;



/******************************************************************************/
/***                      User defined functions (UDF)                      ***/
/******************************************************************************/

DECLARE EXTERNAL FUNCTION COMMALTRIM
    CSTRING(255)
    RETURNS CSTRING(255) FREE_IT
    ENTRY_POINT 'CommaLTrim' MODULE_NAME 'wlb_udf';


DECLARE EXTERNAL FUNCTION COMMARTRIM
    CSTRING(255)
    RETURNS CSTRING(255) FREE_IT
    ENTRY_POINT 'CommaRTrim' MODULE_NAME 'wlb_udf';


DECLARE EXTERNAL FUNCTION COMMATRIM
    CSTRING(255)
    RETURNS CSTRING(255) FREE_IT
    ENTRY_POINT 'CommaTrim' MODULE_NAME 'wlb_udf';


DECLARE EXTERNAL FUNCTION CONTAINSTEXT
    CSTRING(255),
    CSTRING(25)
    RETURNS INTEGER BY VALUE
    ENTRY_POINT 'ContainsText' MODULE_NAME 'wlb_udf';




/******************************************************************************/
/***                                Domains                                 ***/
/******************************************************************************/

CREATE DOMAIN BOOLEAN AS
SMALLINT
NOT NULL
CHECK (VALUE IN (0,1));

CREATE DOMAIN TCOURSE_NO AS
SMALLINT
CHECK ((VALUE BETWEEN 1 AND 6) OR (VALUE IS NULL));

CREATE DOMAIN TFACULTY_ABBR AS
VARCHAR(5) CHARACTER SET UTF8
NOT NULL
CHECK (VALUE<>'');

CREATE DOMAIN THOURS AS
DECIMAL(5,2)
DEFAULT 0
NOT NULL
CHECK (VALUE BETWEEN 0 AND 999.99);

CREATE DOMAIN TSEMESTER_NO AS
SMALLINT
NOT NULL
CHECK (VALUE BETWEEN 1 AND 2);

CREATE DOMAIN TSTUDENTS_CNT AS
SMALLINT
NOT NULL
CHECK (VALUE BETWEEN 0 AND 99);



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR GEN_DETAIL_ID;
SET GENERATOR GEN_DETAIL_ID TO 984;

CREATE GENERATOR GEN_GROUP_ID;
SET GENERATOR GEN_GROUP_ID TO 124;

CREATE GENERATOR GEN_ITEM_ID;
SET GENERATOR GEN_ITEM_ID TO 212;

CREATE GENERATOR GEN_SUBDETAIL_ID;
SET GENERATOR GEN_SUBDETAIL_ID TO 650;

CREATE GENERATOR GEN_SUBJECT_ID;
SET GENERATOR GEN_SUBJECT_ID TO 55;

CREATE GENERATOR GEN_TEACHER_ID;
SET GENERATOR GEN_TEACHER_ID TO 49;



/******************************************************************************/
/***                               Exceptions                               ***/
/******************************************************************************/

CREATE EXCEPTION E_HOURS_GREATER '�������! ʳ������ ����� ������� ���� ����� 1000.';

CREATE EXCEPTION E_HOURS_LESS_SUM '�������! �������� �� ���� ���� ������ ��� ���������� ������� �����.';

CREATE EXCEPTION E_HOURS_LESS_ZERO '�������! ʳ������ ����� �� ���� ���� ��''����� ���������.';

CREATE EXCEPTION E_HOURS_SUM_OVERFLOW '�������! ������� ������� ����� ����� �������.';



/******************************************************************************/
/***                           Stored procedures                            ***/
/******************************************************************************/



SET TERM ^ ;

CREATE OR ALTER PROCEDURE CLEAR_WORKLOAD_I (
    ITEM_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE GET_GROUPS_STR (
    SUBDETAIL_ID INTEGER)
RETURNS (
    GROUPS VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE GET_GROUPS_STR_EX (
    EDUTYPE_ID INTEGER,
    EDUFORM_ID INTEGER,
    SEMESTER_NO SMALLINT,
    SUBJECT_ID INTEGER,
    COURSE_NO SMALLINT,
    TEACHER_ID INTEGER,
    WORK_ID INTEGER)
RETURNS (
    GROUPS VARCHAR(150),
    STUD_BUDG INTEGER,
    STUD_CONT INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE GET_HOURS_SUM (
    DETAIL_ID INTEGER)
RETURNS (
    SUM_OF_HOURS DECIMAL(9,2))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE GET_UNPORTIONED_HOURS (
    DETAIL_ID INTEGER)
RETURNS (
    UNPORTIONED_HOURS DECIMAL(9,2))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE IP1_GET_GROUPS (
    SEMESTER_NO SMALLINT,
    TEACHER_ID INTEGER,
    SUBJECT_ID INTEGER,
    COURSE_NO SMALLINT,
    EDUFORM_ID INTEGER)
RETURNS (
    GROUPS VARCHAR(150),
    FACULTIES VARCHAR(150),
    GROUPS_CNT INTEGER,
    STUD_CNT_BUDG INTEGER,
    STUD_CNT_CONT INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE IP1_GET_HOURS_SUM (
    TEACHER_ID INTEGER,
    EDUTYPE_ID INTEGER,
    EDUFORM_ID INTEGER,
    SUBJECT_ID INTEGER,
    COURSE_NO SMALLINT,
    SEMESTER_NO SMALLINT,
    WORK_ID INTEGER)
RETURNS (
    SUM_OF_HOURS DECIMAL(5,2))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE IP1_GET_VOLUME (
    TEACHER_ID INTEGER,
    SEMESTER_NO SMALLINT,
    SUBJECT_ID INTEGER,
    COURSE_NO SMALLINT,
    EDUFORM_ID INTEGER)
RETURNS (
    SUM_OF_VOLUME DECIMAL(5,2))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE IP2_GET_WORK_INFO (
    TEACHER_ID INTEGER,
    SEMESTER_NO SMALLINT,
    WORK_ID INTEGER,
    COURSE_NO SMALLINT)
RETURNS (
    HOURS_BUDG DECIMAL(5,2),
    HOURS_CONT DECIMAL(5,2),
    STUDS_CNT_BUDG SMALLINT,
    STUDS_CNT_CONT SMALLINT,
    GROUPS VARCHAR(150),
    FACULTIES VARCHAR(150),
    COURSES VARCHAR(15))
AS
BEGIN
  SUSPEND;
END^






SET TERM ; ^



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE APP_PARAMS (
    IDX          INTEGER DEFAULT 0 NOT NULL,
    EDUTYPE_ID   INTEGER DEFAULT 1,
    EDUFORM_ID   INTEGER DEFAULT 1,
    COURSE_NO    SMALLINT DEFAULT 0 NOT NULL,
    SEMESTER_NO  SMALLINT DEFAULT 1,
    FACULTY      VARCHAR(50) CHARACTER SET UTF8,
    DEPARTMENT   VARCHAR(75) CHARACTER SET UTF8
);

CREATE TABLE DETAILS_TBL (
    DETAIL_ID  INTEGER NOT NULL,
    ITEM_ID    INTEGER NOT NULL,
    WORK_ID    INTEGER NOT NULL,
    HOURS      THOURS NOT NULL
);

CREATE TABLE EDUFORMS_TBL (
    EDUFORM_ID    INTEGER NOT NULL,
    EDUFORM_NAME  VARCHAR(25) CHARACTER SET UTF8 NOT NULL
);

CREATE TABLE EDUTYPES_TBL (
    EDUTYPE_ID    INTEGER NOT NULL,
    EDUTYPE_NAME  VARCHAR(25) CHARACTER SET UTF8 NOT NULL
);

CREATE TABLE GPRELATIONS_TBL (
    SUBDETAIL_ID  INTEGER NOT NULL,
    GROUP_ID      INTEGER NOT NULL
);

CREATE TABLE GROUPS_TBL (
    GROUP_ID      INTEGER NOT NULL,
    GROUP_NAME    VARCHAR(10) CHARACTER SET UTF8 NOT NULL,
    GROUP_MISC    VARCHAR(100) CHARACTER SET UTF8,
    EDUFORM_ID    INTEGER,
    COURSE_NO     TCOURSE_NO NOT NULL,
    BUDGET_CNT    TSTUDENTS_CNT NOT NULL,
    CONTRACT_CNT  TSTUDENTS_CNT NOT NULL,
    FACULTY_ABBR  TFACULTY_ABBR NOT NULL
);

CREATE TABLE MAIN_TBL (
    ITEM_ID      INTEGER NOT NULL,
    SUBJECT_ID   INTEGER NOT NULL,
    COURSE_NO    TCOURSE_NO NOT NULL,
    SEMESTER_NO  TSEMESTER_NO NOT NULL,
    EDUTYPE_ID   INTEGER NOT NULL,
    EDUFORM_ID   INTEGER NOT NULL,
    VOLUME       THOURS NOT NULL
);

CREATE TABLE SUBDETAILS_TBL (
    SUBDETAIL_ID  INTEGER NOT NULL,
    DETAIL_ID     INTEGER NOT NULL,
    TEACHER_ID    INTEGER NOT NULL,
    HOURS         THOURS NOT NULL
);

CREATE TABLE SUBJECTS_TBL (
    SUBJECT_ID    INTEGER NOT NULL,
    SUBJECT_NAME  VARCHAR(75) CHARACTER SET UTF8 NOT NULL,
    SUBJECT_MISC  VARCHAR(100) CHARACTER SET UTF8
);

CREATE TABLE TEACHERS_TBL (
    TEACHER_ID      INTEGER NOT NULL,
    TEACHER_NAME    VARCHAR(35) CHARACTER SET UTF8 NOT NULL,
    TEACHER_POS     VARCHAR(35) CHARACTER SET UTF8,
    TEACHER_RATE    DECIMAL(3,2) DEFAULT 0 NOT NULL,
    TEACHER_MISC    VARCHAR(100) CHARACTER SET UTF8,
    TEACHER_RANK    VARCHAR(25) CHARACTER SET UTF8,
    TEACHER_DEGREE  VARCHAR(25) CHARACTER SET UTF8
);

CREATE TABLE WORKS_TBL (
    WORK_ID       INTEGER NOT NULL,
    WORK_NAME     VARCHAR(40) CHARACTER SET UTF8 NOT NULL,
    HRS_PER_STUD  DECIMAL(5,2)
);



/******************************************************************************/
/***                           Check constraints                            ***/
/******************************************************************************/

ALTER TABLE TEACHERS_TBL ADD CONSTRAINT CHK_TEACHER_RATE check (TEACHER_RATE BETWEEN 0 AND 9.99);


/******************************************************************************/
/***                           Unique constraints                           ***/
/******************************************************************************/

ALTER TABLE DETAILS_TBL ADD CONSTRAINT UNQ_DETAILS_TBL UNIQUE (ITEM_ID, WORK_ID);
ALTER TABLE EDUFORMS_TBL ADD CONSTRAINT UNQ_EDUFORMS_NAME UNIQUE (EDUFORM_NAME);
ALTER TABLE EDUTYPES_TBL ADD CONSTRAINT UNQ_EDUTYPE_NAME UNIQUE (EDUTYPE_NAME);
ALTER TABLE GPRELATIONS_TBL ADD CONSTRAINT UNQ_GPRELATIONS_TBL UNIQUE (SUBDETAIL_ID, GROUP_ID);
ALTER TABLE GROUPS_TBL ADD CONSTRAINT UNQ_GROUPS_TBL UNIQUE (GROUP_NAME);
ALTER TABLE MAIN_TBL ADD CONSTRAINT UNQ_MAIN_TBL UNIQUE (SUBJECT_ID, COURSE_NO, SEMESTER_NO, EDUTYPE_ID, EDUFORM_ID);
ALTER TABLE SUBDETAILS_TBL ADD CONSTRAINT UNQ_SUBDETAILS_TBL UNIQUE (DETAIL_ID, TEACHER_ID);
ALTER TABLE SUBJECTS_TBL ADD CONSTRAINT UNQ_SUBJECT_NAME UNIQUE (SUBJECT_NAME);
ALTER TABLE TEACHERS_TBL ADD CONSTRAINT UNQ_TEACHER_NAME UNIQUE (TEACHER_NAME);
ALTER TABLE WORKS_TBL ADD CONSTRAINT UNQ_WORK_NAME UNIQUE (WORK_NAME);


/******************************************************************************/
/***                              Primary keys                              ***/
/******************************************************************************/

ALTER TABLE APP_PARAMS ADD CONSTRAINT PK_APP_PARAMS PRIMARY KEY (IDX);
ALTER TABLE DETAILS_TBL ADD CONSTRAINT PK_DETAILS_TBL PRIMARY KEY (DETAIL_ID);
ALTER TABLE EDUFORMS_TBL ADD CONSTRAINT PK_EDUFORMS_TBL PRIMARY KEY (EDUFORM_ID);
ALTER TABLE EDUTYPES_TBL ADD CONSTRAINT PK_EDUTYPES_TBL PRIMARY KEY (EDUTYPE_ID);
ALTER TABLE GROUPS_TBL ADD CONSTRAINT PK_GROUPS_TBL PRIMARY KEY (GROUP_ID);
ALTER TABLE MAIN_TBL ADD CONSTRAINT PK_MAIN_TBL PRIMARY KEY (ITEM_ID);
ALTER TABLE SUBDETAILS_TBL ADD CONSTRAINT PK_SUBDETAILS_TBL PRIMARY KEY (SUBDETAIL_ID);
ALTER TABLE SUBJECTS_TBL ADD CONSTRAINT PK_SUBJECTS_TBL PRIMARY KEY (SUBJECT_ID);
ALTER TABLE TEACHERS_TBL ADD CONSTRAINT PK_TEACHERS_TBL PRIMARY KEY (TEACHER_ID);
ALTER TABLE WORKS_TBL ADD CONSTRAINT PK_WORKS_TBL PRIMARY KEY (WORK_ID);


/******************************************************************************/
/***                              Foreign keys                              ***/
/******************************************************************************/

ALTER TABLE DETAILS_TBL ADD CONSTRAINT FK_DETAILS_ITEM_ID FOREIGN KEY (ITEM_ID) REFERENCES MAIN_TBL (ITEM_ID) ON UPDATE CASCADE;
ALTER TABLE DETAILS_TBL ADD CONSTRAINT FK_DETAILS_WORK_ID FOREIGN KEY (WORK_ID) REFERENCES WORKS_TBL (WORK_ID) ON UPDATE CASCADE;
ALTER TABLE GPRELATIONS_TBL ADD CONSTRAINT FK_GPRELATIONS_GROUP_ID FOREIGN KEY (GROUP_ID) REFERENCES GROUPS_TBL (GROUP_ID) ON UPDATE CASCADE;
ALTER TABLE GPRELATIONS_TBL ADD CONSTRAINT FK_GPRELATIONS_SUBDETAIL_ID FOREIGN KEY (SUBDETAIL_ID) REFERENCES SUBDETAILS_TBL (SUBDETAIL_ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GROUPS_TBL ADD CONSTRAINT FK_GROUPS_EDUFORM_ID FOREIGN KEY (EDUFORM_ID) REFERENCES EDUFORMS_TBL (EDUFORM_ID) ON UPDATE CASCADE;
ALTER TABLE MAIN_TBL ADD CONSTRAINT FK_MAIN_EDUFORM_ID FOREIGN KEY (EDUFORM_ID) REFERENCES EDUFORMS_TBL (EDUFORM_ID) ON UPDATE CASCADE;
ALTER TABLE MAIN_TBL ADD CONSTRAINT FK_MAIN_EDUTYPE_ID FOREIGN KEY (EDUTYPE_ID) REFERENCES EDUTYPES_TBL (EDUTYPE_ID) ON UPDATE CASCADE;
ALTER TABLE MAIN_TBL ADD CONSTRAINT FK_MAIN_SUBJECT_ID FOREIGN KEY (SUBJECT_ID) REFERENCES SUBJECTS_TBL (SUBJECT_ID) ON UPDATE CASCADE;
ALTER TABLE SUBDETAILS_TBL ADD CONSTRAINT FK_SUBDETAILS_DETAIL_ID FOREIGN KEY (DETAIL_ID) REFERENCES DETAILS_TBL (DETAIL_ID) ON UPDATE CASCADE;
ALTER TABLE SUBDETAILS_TBL ADD CONSTRAINT FK_SUBDETAILS_TEACHER_ID FOREIGN KEY (TEACHER_ID) REFERENCES TEACHERS_TBL (TEACHER_ID) ON UPDATE CASCADE;


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: DETAILS_TBL_BU0 */
CREATE OR ALTER TRIGGER DETAILS_TBL_BU0 FOR DETAILS_TBL
ACTIVE BEFORE UPDATE POSITION 0
AS
  DECLARE VARIABLE SUM_OF_HOURS DECIMAL(9,2);
BEGIN
  if (new.HOURS<0) then EXCEPTION E_HOURS_LESS_ZERO;
  if (new.HOURS>=1000) then EXCEPTION E_HOURS_GREATER;

  EXECUTE PROCEDURE GET_HOURS_SUM(old.DETAIL_ID)
  RETURNING_VALUES :sum_of_hours;

  IF (new.HOURS<:sum_of_hours) THEN EXCEPTION E_HOURS_LESS_SUM;
END
^

/* Trigger: MAIN_TBL_BIU0 */
CREATE OR ALTER TRIGGER MAIN_TBL_BIU0 FOR MAIN_TBL
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS
begin
  if (new.VOLUME<0) then EXCEPTION E_HOURS_LESS_ZERO;
  if (new.VOLUME>=1000) then EXCEPTION E_HOURS_GREATER;
end
^

/* Trigger: SUBDETAILS_TBL_BIU0 */
CREATE OR ALTER TRIGGER SUBDETAILS_TBL_BIU0 FOR SUBDETAILS_TBL
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS
  DECLARE VARIABLE HOURS DECIMAL(9,2);
  DECLARE VARIABLE SUM_OF_HOURS DECIMAL(9,2);
begin
  if (new.HOURS<0) then EXCEPTION E_HOURS_LESS_ZERO;

  if (new.HOURS>=1000) then EXCEPTION E_HOURS_SUM_OVERFLOW;

  EXECUTE PROCEDURE GET_HOURS_SUM(new.DETAIL_ID)
  RETURNING_VALUES :sum_of_hours;

  SELECT
     HOURS
  FROM
     DETAILS_TBL
  WHERE
     DETAIL_ID = new.DETAIL_ID
  into :hours;

  if (sum_of_hours-old.hours+new.hours>hours) then EXCEPTION E_HOURS_SUM_OVERFLOW;
end
^

/* Trigger: WORKS_TBL_BIU0 */
CREATE OR ALTER TRIGGER WORKS_TBL_BIU0 FOR WORKS_TBL
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS
begin
  if (new.HRS_PER_STUD<0) then EXCEPTION E_HOURS_LESS_ZERO;
  if (new.HRS_PER_STUD>=1000) then EXCEPTION E_HOURS_GREATER;
end
^
SET TERM ; ^



/******************************************************************************/
/***                           Stored procedures                            ***/
/******************************************************************************/



SET TERM ^ ;

CREATE OR ALTER PROCEDURE CLEAR_WORKLOAD_I (
    ITEM_ID INTEGER)
AS
DECLARE VARIABLE SUBDETAIL_ID INTEGER;
begin
  FOR
    SELECT SD.SUBDETAIL_ID
    FROM SUBDETAILS_TBL SD
    INNER JOIN DETAILS_TBL D ON (SD.DETAIL_ID = D.DETAIL_ID)
    WHERE (D.ITEM_ID = :ITEM_ID)
    INTO :SUBDETAIL_ID
  DO
    DELETE FROM SUBDETAILS_TBL
    WHERE (SUBDETAIL_ID = :SUBDETAIL_ID);
  suspend;
end^


CREATE OR ALTER PROCEDURE GET_GROUPS_STR (
    SUBDETAIL_ID INTEGER)
RETURNS (
    GROUPS VARCHAR(100))
AS
DECLARE VARIABLE GROUP_NAME VARCHAR(10);
begin
    groups = '';
    for
      SELECT G.GROUP_NAME
      FROM GROUPS_TBL G
      RIGHT OUTER JOIN GPRELATIONS_TBL GR ON (G.GROUP_ID = GR.GROUP_ID)
      WHERE GR.SUBDETAIL_ID = :subdetail_id
      ORDER BY G.GROUP_NAME
      INTO :group_name
    do
      begin
        if (groups<>'') then groups = groups || ',';
        groups = groups || group_name;
      end
    suspend;
end^


CREATE OR ALTER PROCEDURE GET_GROUPS_STR_EX (
    EDUTYPE_ID INTEGER,
    EDUFORM_ID INTEGER,
    SEMESTER_NO SMALLINT,
    SUBJECT_ID INTEGER,
    COURSE_NO SMALLINT,
    TEACHER_ID INTEGER,
    WORK_ID INTEGER)
RETURNS (
    GROUPS VARCHAR(150),
    STUD_BUDG INTEGER,
    STUD_CONT INTEGER)
AS
DECLARE VARIABLE GROUP_NAME VARCHAR(10);
DECLARE VARIABLE SQL VARCHAR(1024);
DECLARE VARIABLE CND VARCHAR(512);
DECLARE VARIABLE BUDG_CNT SMALLINT;
DECLARE VARIABLE CONT_CNT SMALLINT;
begin
    stud_budg = 0;
    stud_cont = 0;
    groups = '';
    CND = '';
    SQL = '
    SELECT DISTINCT G.GROUP_NAME, G.BUDGET_CNT, G.CONTRACT_CNT
    FROM GPRELATIONS_TBL GR
    INNER JOIN SUBDETAILS_TBL SD ON (GR.SUBDETAIL_ID = SD.SUBDETAIL_ID)
    INNER JOIN DETAILS_TBL D ON (SD.DETAIL_ID = D.DETAIL_ID)
    INNER JOIN MAIN_TBL M ON (D.ITEM_ID = M.ITEM_ID)
    INNER JOIN GROUPS_TBL G ON (GR.GROUP_ID = G.GROUP_ID)';

    if (:subject_id>0) then CND = '(M.SUBJECT_ID='||:SUBJECT_ID||')';
    if (:course_no between 1 and 6) then
      begin
        if (CND<>'') then CND = CND || 'AND';
        CND = CND || '(M.COURSE_NO='||:COURSE_NO||')';
      end
    if (:teacher_id>0) then
      begin
        if (CND<>'') then CND = CND || 'AND';
        CND = CND || '(SD.TEACHER_ID='||:TEACHER_ID||')';
      end
    if (:semester_no between 1 and 2) then
      begin
        if (CND<>'') then CND = CND || 'AND';
        CND = CND || '(M.SEMESTER_NO='||:SEMESTER_NO||')';
      end
    if (:edutype_id>0) then
      begin
        if (CND<>'') then CND = CND || 'AND';
        CND = CND || '(M.EDUTYPE_ID='||:EDUTYPE_ID||')';
      end
    if (:eduform_id>0) then
      begin
        if (CND<>'') then CND = CND || 'AND';
        CND = CND || '(M.EDUFORM_ID='||:EDUFORM_ID||')';
      end
    if (:work_id>0) then
      begin
        if (CND<>'') then CND = CND || 'AND';
        CND = CND || '(D.WORK_ID='||:WORK_ID||')';
      end

    if (CND<>'') then SQL = SQL || ' WHERE ' || CND;

    for
      EXECUTE STATEMENT SQL INTO :group_name, :budg_cnt, :cont_cnt
    do
      begin
        stud_budg = stud_budg + budg_cnt;
        stud_cont = stud_cont + cont_cnt;
        if (groups<>'') then groups = groups || ',';
        groups = groups || group_name;
      end
    suspend;
end^


CREATE OR ALTER PROCEDURE GET_HOURS_SUM (
    DETAIL_ID INTEGER)
RETURNS (
    SUM_OF_HOURS DECIMAL(9,2))
AS
begin
  SELECT
      SUM(S.HOURS) SUM_OF_HOURS
  FROM
      SUBDETAILS_TBL S
  WHERE
      S.DETAIL_ID = :detail_id
  GROUP BY S.DETAIL_ID
  INTO :sum_of_hours;

  if (sum_of_hours IS NULL) then sum_of_hours=0;
  suspend;
end^


CREATE OR ALTER PROCEDURE GET_UNPORTIONED_HOURS (
    DETAIL_ID INTEGER)
RETURNS (
    UNPORTIONED_HOURS DECIMAL(9,2))
AS
DECLARE VARIABLE SUM_OF_HOURS DECIMAL(9,2);
begin
  EXECUTE PROCEDURE GET_HOURS_SUM(:detail_id)
  RETURNING_VALUES :sum_of_hours;

  SELECT (HOURS - :sum_of_hours)
  FROM DETAILS_TBL
  WHERE DETAIL_ID = :detail_id
  INTO :unportioned_hours;

  suspend;
end^


CREATE OR ALTER PROCEDURE IP1_GET_GROUPS (
    SEMESTER_NO SMALLINT,
    TEACHER_ID INTEGER,
    SUBJECT_ID INTEGER,
    COURSE_NO SMALLINT,
    EDUFORM_ID INTEGER)
RETURNS (
    GROUPS VARCHAR(150),
    FACULTIES VARCHAR(150),
    GROUPS_CNT INTEGER,
    STUD_CNT_BUDG INTEGER,
    STUD_CNT_CONT INTEGER)
AS
DECLARE VARIABLE GROUP_NAME VARCHAR(15);
DECLARE VARIABLE BUDGET_CNT SMALLINT;
DECLARE VARIABLE CONTRACT_CNT SMALLINT;
DECLARE VARIABLE FACULTY_ABBR VARCHAR(5) CHARACTER SET UTF8;
BEGIN
groups = '';
stud_cnt_budg = 0;
stud_cnt_cont = 0;
/*
gps_cnt_budg = 0;
gps_cnt_cont = 0;
*/
groups_cnt = 0;
faculties = ',';

for
    SELECT DISTINCT
        G.GROUP_NAME,
        G.BUDGET_CNT,
        G.CONTRACT_CNT,
        G.FACULTY_ABBR
    FROM GROUPS_TBL G
       INNER JOIN GPRELATIONS_TBL GR ON (G.GROUP_ID = GR.GROUP_ID)
       INNER JOIN SUBDETAILS_TBL SD ON (GR.SUBDETAIL_ID = SD.SUBDETAIL_ID)
       INNER JOIN DETAILS_TBL D ON (SD.DETAIL_ID = D.DETAIL_ID)
       INNER JOIN MAIN_TBL M ON (D.ITEM_ID = M.ITEM_ID)
    WHERE 
       (
          (M.SUBJECT_ID = :SUBJECT_ID)
       and 
          (M.COURSE_NO = :COURSE_NO)
       and 
          (M.SEMESTER_NO = :SEMESTER_NO)
       and 
          (M.EDUFORM_ID = :EDUFORM_ID)
       and 
          (SD.TEACHER_ID = :TEACHER_ID)
       )
    INTO :GROUP_NAME, :BUDGET_CNT, :CONTRACT_CNT, :FACULTY_ABBR
do
    begin
        if (groups<>'') then groups = groups || ',';
        groups = groups || group_name;
/*
        if (budget_cnt >= contract_cnt)
            then gps_cnt_budg = gps_cnt_budg + 1;
            else gps_cnt_cont = gps_cnt_cont + 1;
*/
        groups_cnt = groups_cnt + 1;
        stud_cnt_budg = stud_cnt_budg + budget_cnt;
        stud_cnt_cont = stud_cnt_cont + contract_cnt;

        faculty_abbr = faculty_abbr || ',';
        if (CONTAINSTEXT(faculties, ','||faculty_abbr)=0) then
            faculties = faculties || faculty_abbr;
    end

faculties = COMMATRIM(faculties);
suspend;
END^


CREATE OR ALTER PROCEDURE IP1_GET_HOURS_SUM (
    TEACHER_ID INTEGER,
    EDUTYPE_ID INTEGER,
    EDUFORM_ID INTEGER,
    SUBJECT_ID INTEGER,
    COURSE_NO SMALLINT,
    SEMESTER_NO SMALLINT,
    WORK_ID INTEGER)
RETURNS (
    SUM_OF_HOURS DECIMAL(5,2))
AS
begin
SELECT SUM( SD.HOURS ) SUM_OF_HOURS
FROM MAIN_TBL M
   INNER JOIN DETAILS_TBL D ON (M.ITEM_ID = D.ITEM_ID)
   INNER JOIN SUBDETAILS_TBL SD ON (D.DETAIL_ID = SD.DETAIL_ID)
WHERE 
   (
      (M.EDUTYPE_ID = :EDUTYPE_ID)
   and
      (M.EDUFORM_ID = :EDUFORM_ID)
   and
      (M.SUBJECT_ID = :SUBJECT_ID)
   and
      (M.COURSE_NO = :COURSE_NO)
   and 
      (M.SEMESTER_NO = :SEMESTER_NO)
   and 
      (D.WORK_ID = :WORK_ID)
   and 
      (SD.TEACHER_ID = :TEACHER_ID)
   )
INTO :SUM_OF_HOURS;
suspend;
end^


CREATE OR ALTER PROCEDURE IP1_GET_VOLUME (
    TEACHER_ID INTEGER,
    SEMESTER_NO SMALLINT,
    SUBJECT_ID INTEGER,
    COURSE_NO SMALLINT,
    EDUFORM_ID INTEGER)
RETURNS (
    SUM_OF_VOLUME DECIMAL(5,2))
AS
DECLARE VARIABLE VOLUME DECIMAL(5,2);
DECLARE VARIABLE TEMP INTEGER;
begin
  sum_of_volume = 0;
  for
    SELECT DISTINCT M.VOLUME, M.ITEM_ID
    FROM DETAILS_TBL D
       INNER JOIN SUBDETAILS_TBL SD ON (D.DETAIL_ID = SD.DETAIL_ID)
       INNER JOIN MAIN_TBL M ON (D.ITEM_ID = M.ITEM_ID)
    WHERE 
       (
          (SD.TEACHER_ID = :teacher_id)
       and 
          (M.SEMESTER_NO = :semester_no)
       and 
          (M.SUBJECT_ID = :subject_id)
       and 
          (M.COURSE_NO = :course_no)
       and 
          (M.EDUFORM_ID = :eduform_id)
       )
    INTO :volume, :temp
  do
    begin
        sum_of_volume = sum_of_volume + volume;
    end
  suspend;
end^


CREATE OR ALTER PROCEDURE IP2_GET_WORK_INFO (
    TEACHER_ID INTEGER,
    SEMESTER_NO SMALLINT,
    WORK_ID INTEGER,
    COURSE_NO SMALLINT)
RETURNS (
    HOURS_BUDG DECIMAL(5,2),
    HOURS_CONT DECIMAL(5,2),
    STUDS_CNT_BUDG SMALLINT,
    STUDS_CNT_CONT SMALLINT,
    GROUPS VARCHAR(150),
    FACULTIES VARCHAR(150),
    COURSES VARCHAR(15))
AS
DECLARE VARIABLE VSUM_OF_HOURS DECIMAL(6,2);
DECLARE VARIABLE VEDUTYPE_ID INTEGER;
DECLARE VARIABLE VCOURSE_NO SMALLINT;
DECLARE VARIABLE VFACULTY_ABBR VARCHAR(5);
DECLARE VARIABLE VCONTRACT_CNT SMALLINT;
DECLARE VARIABLE VBUDGET_CNT SMALLINT;
DECLARE VARIABLE VGROUP_NAME VARCHAR(10);
DECLARE VARIABLE VCOURSE_STR VARCHAR(5);
begin
  hours_budg = 0;
  hours_cont = 0;
  studs_cnt_budg = 0;
  studs_cnt_cont = 0;
  groups = ',';
  faculties = ',';
  courses = ',';


/*  HOURS INFO */
  for
    SELECT SUM(SD.HOURS) SUM_OF_HOURS, M.EDUTYPE_ID, M.COURSE_NO
    FROM MAIN_TBL M
        INNER JOIN DETAILS_TBL D ON (M.ITEM_ID = D.ITEM_ID)
        INNER JOIN SUBDETAILS_TBL SD ON (D.DETAIL_ID = SD.DETAIL_ID)
    WHERE 
       (
          (D.WORK_ID = :WORK_ID)
       and 
          (SD.TEACHER_ID = :TEACHER_ID)
       and 
          (M.SEMESTER_NO = :SEMESTER_NO)
       and
          (
            (:COURSE_NO = 0)
          or
            (M.COURSE_NO = :COURSE_NO)
          )
       )
    GROUP BY M.EDUTYPE_ID,M.COURSE_NO
    ORDER BY M.COURSE_NO
    INTO :VSUM_OF_HOURS,
         :VEDUTYPE_ID,
         :VCOURSE_NO
  do
  begin
    if (:vedutype_id=1) then hours_budg = hours_budg + vsum_of_hours;
    else
    if (:vedutype_id=2) then hours_cont = hours_cont + vsum_of_hours;

    vcourse_str = vcourse_no || ',';
    if (containstext(courses, ','||vcourse_str)=0) then
        courses = courses || vcourse_str;
  end

/*  GROUP INFO */
  for
    SELECT DISTINCT
        G.GROUP_NAME, G.FACULTY_ABBR, G.CONTRACT_CNT, G.BUDGET_CNT
    FROM MAIN_TBL M
       INNER JOIN DETAILS_TBL D ON (M.ITEM_ID = D.ITEM_ID)
       INNER JOIN SUBDETAILS_TBL SD ON (D.DETAIL_ID = SD.DETAIL_ID)
       INNER JOIN GPRELATIONS_TBL GR ON (SD.SUBDETAIL_ID = GR.SUBDETAIL_ID)
       INNER JOIN GROUPS_TBL G ON (GR.GROUP_ID = G.GROUP_ID)
    WHERE 
       (
          (D.WORK_ID = :WORK_ID)
       and 
          (SD.TEACHER_ID = :TEACHER_ID)
       and 
          (M.SEMESTER_NO = :SEMESTER_NO)
       and 
          (
             (:COURSE_NO = 0)
          or 
             (M.COURSE_NO = :COURSE_NO)
          )
       )
    ORDER BY GROUP_NAME
    INTO :VGROUP_NAME,
         :VFACULTY_ABBR,
         :VCONTRACT_CNT,
         :VBUDGET_CNT
  do
  begin
    if (vgroup_name<>'') then
      begin
        vgroup_name = vgroup_name || ',';
        if (containstext(groups, ','||vgroup_name)=0) then
          begin
            groups = groups || vgroup_name;
            studs_cnt_budg = studs_cnt_budg + vbudget_cnt;
            studs_cnt_cont = studs_cnt_cont + vcontract_cnt;
          end
        vfaculty_abbr = vfaculty_abbr || ',';
        if (containstext(faculties, ','||vfaculty_abbr)=0) then
            faculties = faculties || vfaculty_abbr;
      end
  end

  groups = commatrim(groups);
  faculties = commatrim(faculties);
  courses = commatrim(courses);
  suspend;
end^



SET TERM ; ^

GRANT EXECUTE
 ON PROCEDURE CLEAR_WORKLOAD_I TO  SYSDBA;

GRANT EXECUTE
 ON PROCEDURE GET_GROUPS_STR TO  SYSDBA;

GRANT EXECUTE
 ON PROCEDURE GET_GROUPS_STR_EX TO  SYSDBA;

GRANT EXECUTE
 ON PROCEDURE GET_HOURS_SUM TO  SYSDBA;

GRANT EXECUTE
 ON PROCEDURE GET_UNPORTIONED_HOURS TO  SYSDBA;

GRANT EXECUTE
 ON PROCEDURE IP1_GET_GROUPS TO  SYSDBA;

GRANT EXECUTE
 ON PROCEDURE IP1_GET_HOURS_SUM TO  SYSDBA;

GRANT EXECUTE
 ON PROCEDURE IP1_GET_VOLUME TO  SYSDBA;

GRANT EXECUTE
 ON PROCEDURE IP2_GET_WORK_INFO TO  SYSDBA;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON APP_PARAMS TO  SYSDBA WITH GRANT OPTION;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON DETAILS_TBL TO  SYSDBA WITH GRANT OPTION;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON EDUFORMS_TBL TO  SYSDBA WITH GRANT OPTION;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON EDUTYPES_TBL TO  SYSDBA WITH GRANT OPTION;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON GPRELATIONS_TBL TO  SYSDBA WITH GRANT OPTION;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON GROUPS_TBL TO  SYSDBA WITH GRANT OPTION;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON MAIN_TBL TO  SYSDBA WITH GRANT OPTION;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON SUBDETAILS_TBL TO  SYSDBA WITH GRANT OPTION;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON SUBJECTS_TBL TO  SYSDBA WITH GRANT OPTION;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON TEACHERS_TBL TO  SYSDBA WITH GRANT OPTION;

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON WORKS_TBL TO  SYSDBA WITH GRANT OPTION;



/******************************************************************************/
/***                              Descriptions                              ***/
/******************************************************************************/
