CREATE TABLE Employment (
   EMPLOYID NUMBER(15) PRIMARY KEY,
    ENAME VARCHAR2(50),
    DEPTNO NUMBER(3),
    DEPTNAME VARCHAR2(20),
    GENDER VARCHAR2(5),
    AGE NUMBER(5),
    BASICSAL NUMBER(20),
   );
INSERT INTO Employment VALUES(1002,'Tanaka Chaunga',1,'Sciences','M',34,1200);
COMMIT
INSERT INTO Employment VALUES(1003,'Panashe Chahwanda',2,'Commercials','M',36,1250);
COMMIT
INSERT INTO Employment VALUES(1004,'Tawanda Changure',3,'Arts','F',40,1350);
COMMIT

SET SERVEROUTPUT ON;
 DECLARE
       v-EMPLOYIN Employment.EMPLOYID%TYPE :=&EMPLOYID
       v_ENAME Employment.ENAME%TYPE
       v_DEPTNO Employment.DEPTNO%TYPE
       v_DEPTNAME Employment.DEPTNAME%TYPE
       v_ GENDER Employment.GENDER%TYPE
       v_ AGE Employment.AGE%TYPE
       v_BASICSAL Employment.BASICSAL%TYPE

BEGIN
    SELECT ENAME,BASICSAL
    INTO v_ENAME,vBASICSAL
    FROM Employment
    WHERE EMPLOYID =v_EMPLOYID;
    --HRA =15% of Basic Salary
    v_hra :=v_BASICSAL *15/100;
    --DA =50% of Basic Salary
    vDA :