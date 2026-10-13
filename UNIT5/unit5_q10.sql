//Write a trigger to restrict users from using the table on Sunday

sql

CREATE OR REPLACE TRIGGER TRG_RESTRICT_SUNDAY
BEFORE INSERT OR UPDATE OR DELETE ON EMP
BEGIN
    IF TO_CHAR(SYSDATE, 'DY') = 'SUN' THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'You cannot use the EMP table on Sunday'
        );
    END IF;
END;
/

