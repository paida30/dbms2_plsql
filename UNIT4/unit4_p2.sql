\\Write a simple procedure that increases the basic salary of employees for the given department number by percentage inputted by the user using the IN
parameter.


CREATE OR REPLACE PROCEDURE increase _ salary
(
    p _ deptno IN NUMBER,
    p _ percent IN NUMBER
)
IS
BEGIN
    UPDATE employee
    SET basic _ salary = basic _ salary + (basic _ salary * p _ percent / 100)
    WHERE deptno = p _ deptno;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Salary updated successfully.');
END;
/
