set serveroutput on;
SQL> DECLARE
  2  p NUMBER := &p;
  3  r NUMBER := &r;
  4  n NUMBER := &n;
  5  si NUMBER;
  6  BEGIN
  7  si :=(p*r*n)/100;
  8  DBMS_OUTPUT.PUT_LINE('Simple Interest ='||si);
  9  END;
  10  /