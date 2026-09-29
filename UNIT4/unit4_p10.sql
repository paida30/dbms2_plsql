Write a function that returns the balance for a given account number.

CREATE OR REPLACE FUNCTION GET_BALANCE
(
    P_ACNO IN NUMBER
)
RETURN NUMBER
IS
    V_BALANCE NUMBER;
BEGIN
    SELECT BALANCE
    INTO V_BALANCE
    FROM ACCOUNT
    WHERE ACNO = P_ACNO;

    RETURN V_BALANCE;
END;
/

SET SERVEROUTPUT ON;

DECLARE
    V_BALANCE NUMBER;
BEGIN
    V_BALANCE := GET_BALANCE(101);

    DBMS_OUTPUT.PUT_LINE('Account Balance = ' || V_BALANCE);
END;
/
