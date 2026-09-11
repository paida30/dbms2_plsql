
//Use a cursor attribute %NOTFOUND to increase the salary of employees in department 20 by 5% and display an appropriate message based on whether a record exists.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR C_EMP IS
        SELECT EMPNO, ENAME, SAL
        FROM EMP
        WHERE DEPTNO = 20;

    V_EMPNO EMP.EMPNO%TYPE;
    V_ENAME EMP.ENAME%TYPE;
    V_SAL   EMP.SAL%TYPE;
    V_FOUND NUMBER := 0;

BEGIN
    OPEN C_EMP;

    LOOP
        FETCH C_EMP INTO V_EMPNO, V_ENAME, V_SAL;

        EXIT WHEN C_EMP%NOTFOUND;

        UPDATE EMP
        SET SAL = SAL * 1.05
        WHERE EMPNO = V_EMPNO;

        V_FOUND := V_FOUND + 1;

        DBMS_OUTPUT.PUT_LINE(
            'Employee: ' || V_ENAME ||
            ' | Old Salary: ' || V_SAL ||
            ' | New Salary: ' || V_SAL * 1.05
        );
    END LOOP;

    CLOSE C_EMP;

    IF V_FOUND > 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            V_FOUND || ' employee(s) found in Department 20.'
        );
        DBMS_OUTPUT.PUT_LINE(
            'Salary increased by 5%.'
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'No employees found in Department 20.'
        );
    END IF;

    COMMIT;
END;
/
