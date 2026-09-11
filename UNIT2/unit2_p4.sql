// write a Program — Using Explicit Cursor

CREATE TABLE EMP_UPDATE
(
    EMPNO       NUMBER,
    ENAME       VARCHAR2(20),
    OLD_SAL     NUMBER,
    NEW_SAL     NUMBER,
    UPDATE_DATE DATE
);



SET SERVEROUTPUT ON;

DECLARE
    CURSOR C_EMP IS
        SELECT EMPNO, ENAME, SAL
        FROM EMP
        WHERE DEPTNO = 10;

    V_EMPNO EMP.EMPNO%TYPE;
    V_ENAME EMP.ENAME%TYPE;
    V_SAL   EMP.SAL%TYPE;

BEGIN
    OPEN C_EMP;

    LOOP
        FETCH C_EMP INTO V_EMPNO, V_ENAME, V_SAL;

        EXIT WHEN C_EMP%NOTFOUND;

        UPDATE EMP
        SET SAL = V_SAL * 1.10
        WHERE EMPNO = V_EMPNO;

        INSERT INTO EMP_UPDATE
        VALUES
        (
            V_EMPNO,
            V_ENAME,
            V_SAL,
            V_SAL * 1.10,
            SYSDATE
        );

        DBMS_OUTPUT.PUT_LINE(
            V_ENAME || ' salary updated from ' ||
            V_SAL || ' to ' || V_SAL * 1.10
        );
    END LOOP;

    CLOSE C_EMP;

    COMMIT;
END;
/
