 set serveroutput on
 DEClARE
    i NUMBER:=1;
    n NUMBER:=&N;
    BEGIN
     LOOP
  
         EXIT WHEN i>n;
         DBMS_OUTPUT.PUT_LINE(i);
         i:=i+1;
     END LOOP;
  END;
   /