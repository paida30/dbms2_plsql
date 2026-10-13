//Write a trigger to insert the existing values of the EMP table into NEWEMP table when the record is
deleted from EMP table.

sql

CREATE OR REPLACE TRIGGER TRG_EMP_DELETE
AFTER DELETE ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP
    VALUES (
        :OLD.EMPNO,
        :OLD.ENAME,
        :OLD.JOB,
        :OLD.MGR,
        :OLD.HIREDATE,
        :OLD.SAL,
        :OLD.COMM,
        :OLD.DEPTNO
    );
END;
/
