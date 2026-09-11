
// Increase the basic salary of employees working in department 10 by 10% and display an appropriate message depending on whether records exist.


SET SERVEROUTPUT ON;

BEGIN
    UPDATE EMP
    SET SAL = SAL * 1.10
    WHERE DEPTNO = 10;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            SQL%ROWCOUNT || ' employee(s) found in Department 10.'
        );
        DBMS_OUTPUT.PUT_LINE(
            'Salary increased by 10%.'
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'No employees found in Department 10.'
        );
    END IF;

    COMMIT;
END;
/
