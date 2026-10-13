//Write a trigger that identifies the gender of the employee and according to the gender sets MR. in front of MALE employees and MS. in front of FEMALE
employees.

sql

CREATE OR REPLACE TRIGGER TRG_EMP_GENDER
BEFORE INSERT OR UPDATE ON EMP
FOR EACH ROW
BEGIN
    IF UPPER(:NEW.GENDER) = 'MALE' THEN
        :NEW.ENAME := 'MR. ' || :NEW.ENAME;
    ELSIF UPPER(:NEW.GENDER) = 'FEMALE' THEN
        :NEW.ENAME := 'MS. ' || :NEW.ENAME;
    END IF;
END;
/