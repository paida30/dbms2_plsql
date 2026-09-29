Write a function that returns the square of the given number. Execute the function using a separate PL/SQL block and on the command line.

CREATE OR REPLACE FUNCTION square_num
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
    v_result := square_num(5);
    DBMS_OUTPUT.PUT_LINE('Square = ' || v_result);
END;
/
