 // write a programme using Explicit Cursor FOR Loop — Top 3 Highest Paid

SET SERVEROUTPUT ON;

DECLARE
    CURSOR C_EMP IS
        SELECT ENAME, DEPTNO, SAL
        FROM EMP
        ORDER BY SAL DESC;

    V_COUNT NUMBER := 0;

BEGIN
    FOR R_EMP IN C_EMP
    LOOP
        V_COUNT := V_COUNT + 1;

        DBMS_OUTPUT.PUT_LINE(
            'Rank: ' || V_COUNT ||
            ' | Name: ' || R_EMP.ENAME ||
            ' | Department: ' || R_EMP.DEPTNO ||
            ' | Salary: ' || R_EMP.SAL
        );

        EXIT WHEN V_COUNT = 3;
    END LOOP;
END;
/
