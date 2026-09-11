 DECLARE
    n NUMBER:=&n;
    BEGIN
    DBMS_OUTPUT.PUT_LINE('Square ='||n*n);
    DBMS_OUTPUT.PUT_LINE('Cube ='||n*n*n);
    END;
   /
