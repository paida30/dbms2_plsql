Write a function that returns the balance for a given account number. (Create ACCOUNT table with ACNO, CNAME, BNAME, BALANCE columns using appropriate data types)


CREATE TABLE ACCOUNT
(
    ACNO     NUMBER(10) PRIMARY KEY,
    CNAME    VARCHAR2(50),
    BNAME    VARCHAR2(50),
    BALANCE  NUMBER(12,2)
);

CREATE OR REPLACE FUNCTION get _ balance
(
    p _ acno IN NUMBER
)
RETURN NUMBER
IS
    v _ balance NUMBER(12,2);
BEGIN
    SELECT BALANCE
    INTO v _ balance
    FROM ACCOUNT
    WHERE ACNO = p _ acno;

    RETURN v _ balance;
END;
/
