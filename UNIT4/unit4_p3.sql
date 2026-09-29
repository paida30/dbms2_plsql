Write a procedure that searches whether the given employee id is present or not in the table. If an employee is found then show its name otherwise raise appropriate error messages (Use both IN and OUT mode variables) and also write a PL/SQL block to call
the procedure


CREATE OR REPLACE PROCEDURE search _ employee
(
    p _ emp _ id   IN  NUMBER,
    p _ emp _ name OUT VARCHAR2
)
IS
BEGIN
    SELECT emp _ name
    INTO p _ emp _ name
    FROM employee
    WHERE emp _ id = p _ emp _ id;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p _ emp _ name := NULL;
        RAISE_APPLICATION_ERROR(-20001, 'Employee ID not found.');
        
    WHEN TOO_MANY_ROWS THEN
        p _ emp _ name := NULL;
        RAISE_APPLICATION_ERROR(-20002, 'More than one employee found.');
END;
/
