Write a function that returns the square of the given number. Execute this function using a separate PL/SQL block and also without using PL/SQL block on the command line.

CREATE OR REPLACE FUNCTION find_square
(
    p_num IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_num * p_num;
END;
/

SET SERVEROUTPUT ON;

DECLARE
    v_result NUMBER;
BEGIN
    v_result := find_square(5);

    DBMS_OUTPUT.PUT_LINE('Square = ' || v_result);
END;
/
