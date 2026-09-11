//Use cursor attribute %ROWCOUNT to display the name, department and basic salary of the first 5 employees getting the highest basic salary.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR C_EMP IS
        SELECT ENAME, DEPTNO, SAL
        FROM EMP
        ORDER BY SAL DESC;

    V_ENAME EMP.ENAME%TYPE;
    V_DEPTNO EMP.DEPTNO%TYPE;
    V_SAL EMP.SAL%TYPE;

BEGIN
    OPEN C_EMP;

    LOOP
        FETCH C_EMP INTO V_ENAME, V_DEPTNO, V_SAL;

        EXIT WHEN C_EMP%NOTFOUND OR C_EMP%ROWCOUNT > 5;

        DBMS_OUTPUT.PUT_LINE(
            'Rank: ' || C_EMP%ROWCOUNT ||
            ' | Name: ' || V_ENAME ||
            ' | Department: ' || V_DEPTNO ||
            ' | Salary: ' || V_SAL
        );
    END LOOP;

    CLOSE C_EMP;
END;
/
