write a program that uses Update EMPLOYEE Table Using Implicit Cursor to perform an update operation on the EMPLOYEE table using an implicit cursor.

SET SERVEROUTPUT ON;

BEGIN
    UPDATE EMPLOYEE
    SET SALARY = SALARY * 1.10
    WHERE DEPTNO = 10;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            SQL%ROWCOUNT || ' employee(s) updated successfully.'
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'No employee found in Department 10.'
        );
    END IF;

    COMMIT;
END;
/
