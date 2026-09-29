Write a simple procedure without any parameter that updates the values in the EMP table.

CREATE OR REPLACE PROCEDURE update_emp
IS
BEGIN
    UPDATE EMP
    SET SAL = SAL + (SAL * 10 / 100);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Employee salaries updated successfully.');
END;
/

SET SERVEROUTPUT ON;

BEGIN
    update_emp;
END;
/
