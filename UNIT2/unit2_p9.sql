// write a program — LIKE Operator + Cursor FOR Loop, to display records using the LIKE operator with a cursor FOR LOOP.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR C_EMP IS
        SELECT EMPNO, ENAME, DEPTNO, SAL
        FROM EMP
        WHERE ENAME LIKE 'S%';

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
