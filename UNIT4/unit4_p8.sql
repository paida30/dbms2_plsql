 Write a procedure that search‟s whether the given employee number is present or not in the table. (Use both IN and OUT mode variables) and also Write a PL/SQL block to call the SEARCH_EMP procedure.

CREATE OR REPLACE PROCEDURE SEARCH_EMP
(
    P_EMPNO IN NUMBER,
    P_RESULT OUT VARCHAR2
)
IS
    V_COUNT NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO V_COUNT
    FROM EMP
    WHERE EMPNO = P_EMPNO;

    IF V_COUNT > 0 THEN
        P_RESULT := 'Employee is present.';
    ELSE
        P_RESULT := 'Employee is not present.';
    END IF;
END;
/

SET SERVEROUTPUT ON;

DECLARE
    V_RESULT VARCHAR2(100);
BEGIN
    SEARCH_EMP(7369, V_RESULT);

    DBMS_OUTPUT.PUT_LINE(V_RESULT);
END;
/
