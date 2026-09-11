//Insert records into EMP_BACKUP for a given department number. Raise a user-defined exception NO_DEPT_FOUND when no records are found.

CREATE TABLE EMP_BACKUP
AS
SELECT *
FROM EMP
WHERE 1 = 2;

SET SERVEROUTPUT ON;

DECLARE
    V_DEPTNO NUMBER := &DEPT_NO;

    CURSOR C_EMP IS
        SELECT *
        FROM EMP
        WHERE DEPTNO = V_DEPTNO;

    V_FOUND NUMBER := 0;

    NO_DEPT_FOUND EXCEPTION;

BEGIN
    FOR R_EMP IN C_EMP
    LOOP
        INSERT INTO EMP_BACKUP
        VALUES
        (
            R_EMP.EMPNO,
            R_EMP.ENAME,
            R_EMP.JOB,
            R_EMP.MGR,
            R_EMP.HIREDATE,
            R_EMP.SAL,
            R_EMP.COMM,
            R_EMP.DEPTNO
        );

        V_FOUND := V_FOUND + 1;
    END LOOP;

    IF V_FOUND = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

    DBMS_OUTPUT.PUT_LINE(
        V_FOUND || ' record(s) inserted into EMP_BACKUP.'
    );

    COMMIT;

EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'NO_DEPT_FOUND: No employees found for Department ' ||
            V_DEPTNO
        );
END;
/
