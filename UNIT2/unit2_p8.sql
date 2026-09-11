// write a program that uses — Explicit Cursor to Display CUSTOMER Records

SET SERVEROUTPUT ON;

DECLARE
    CURSOR C_CUSTOMER IS
        SELECT *
        FROM CUSTOMER;

BEGIN
    FOR R_CUSTOMER IN C_CUSTOMER
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Customer Record: ' ||
            R_CUSTOMER.CUSTOMER_ID
        );
    END LOOP;
END;
/
