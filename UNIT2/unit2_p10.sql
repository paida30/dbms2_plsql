write a program that uses — Cursor FOR Loop + ORDER BY to display records using the ORDER BY clause.


SET SERVEROUTPUT ON;

DECLARE
    CURSOR C_EMP IS
        SELECT EMPNO, ENAME, DEPTNO, SAL
        FROM EMP
        ORDER BY SAL DESC;

BEGIN
    FOR R_EMP IN C_EMP
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Employee No: ' || R_EMP.EMPNO ||
            ' | Name: ' || R_EMP.ENAME ||
            ' | Department: ' || R_EMP.DEPTNO ||
            ' | Salary: ' || R_EMP.SAL
        );
    END LOOP;
END;
/
