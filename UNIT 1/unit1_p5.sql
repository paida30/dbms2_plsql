CREATE TABLE RESULTS (
    ROLLNO NUMBER(5) PRIMARY KEY,
    NAME VARCHAR2(50),
    SUB1 NUMBER(3),
    SUB2 NUMBER(3),
    SUB3 NUMBER(3),
    SUB4 NUMBER(3),
    SUB5 NUMBER(3),
    TOTAL NUMBER(4,6),
    PER NUMBER(5,2),
    GRADE VARCHAR2(2)
);

INSERT INTO RESULTS VALUES (105, 'OPPAH', 85, 78, 92, 88, 80,5,68,'A');

COMMIT;


INSERT INTO RESULTS VALUES (105, 'SASHA', 58, 79, 95, 98, 70,5,78,'A');
COMMIT;

DECLARE
    v_rollno RESULT.ROLLNO%TYPE := &ROLLNO;
    v_total  NUMBER;
    v_per    NUMBER(5,2);
    v_grade  VARCHAR2(2);
BEGIN
       SELECT SUB1 + SUB2 + SUB3 + SUB4 + SUB5,
           (SUB1 + SUB2 + SUB3 + SUB4 + SUB5) / 5
    INTO v_total, v_per
    FROM RESULT
    WHERE ROLLNO = v_rollno;

       IF v_per >= 90 THEN
        v_grade := 'A+';
    ELSIF v_per >= 80 THEN
        v_grade := 'A';
    ELSIF v_per >= 70 THEN
        v_grade := 'B';
    ELSIF v_per >= 60 THEN
        v_grade := 'C';
    ELSIF v_per >= 50 THEN
        v_grade := 'D';
    ELSE
        v_grade := 'F';
    END IF;

       UPDATE RESULT
    SET TOTAL = v_total,
        PER = v_per,
        GRADE = v_grade
    WHERE ROLLNO = v_rollno;

    COMMIT;

    -- Display result
    DBMS_OUTPUT.PUT_LINE('Total Marks : ' || v_total);
    DBMS_OUTPUT.PUT_LINE('Percentage  : ' || v_per || '%');
    DBMS_OUTPUT.PUT_LINE('Grade       : ' || v_grade);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student with Roll No. ' || v_rollno || ' not found.');
END;
/