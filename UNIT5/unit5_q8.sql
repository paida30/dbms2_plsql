//Write a trigger that restricts the entry of record if salary is greater than Rs.50000.

CREATE OR REPLACE TRIGGER TRG_CHECK_SALARY
BEFORE INSERT OR UPDATE ON EMP
FOR EACH ROW
BEGIN
    IF :NEW.SAL > 50000 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Salary cannot be greater than Rs. 50000'
        );
    END IF;
END;
/