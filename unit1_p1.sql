
SET SERVEROUTPUT ON;

   DECLARE
    p_name      VARCHAR2(50);
    qty  NUMBER  :=&qty;
    price NUMBER  :=&price;
    disc_per NUMBER :=&discount;
    disc_amt    NUMBER;
    amount NUMBER;
BEGIN
    p_name := '&pname';
    amount := qty  * price;
    
    disc_amt := ( qty * price *disc_per) / 100;

    DBMS_OUTPUT.PUT_LINE('Product Name : ' || p_name);
    DBMS_OUTPUT.PUT_LINE('Quantity     : ' || qty);
       DBMS_OUTPUT.PUT_LINE('Discount : '|| disc_amt);
END;
/.