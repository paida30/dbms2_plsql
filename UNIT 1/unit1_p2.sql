 set serveroutput on
 DEClARE
       n NUMBER:=&n;
    BEGIN
     FOR i IN 1..N LOOP  
          DBMS_OUTPUT.PUT_LINE(i);
     END LOOP;
  END;
   /