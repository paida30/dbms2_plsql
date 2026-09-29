Write a simple procedure that increases the salary of employees for the given department not by percentage inputted by the user using the IN parameter.

CREATE OR REPLACE PROCEDURE increase_salary
(
    p_deptno IN NUMBER,
    p_amount IN NUMBER
)
IS
BEGIN
    UPDATE EMP
    SET SAL = SAL + p_amount
    WHERE DEPTNO = p_deptno;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Salary updated successfully.');
END;
/

SET SERVEROUTPUT ON;

BEGIN
    increase_salary(10, 2000);
END;
/
