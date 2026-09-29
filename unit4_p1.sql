\\Write a simple procedure without any parameter that shows a user defined message on the screen. Call
the procedure using a separate PL/SQL block and on the command line.

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE show _ message
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello! Welcome to PL/SQL.');
END;
/

BEGIN
    show _ message;
END;
/
