// write a pl/sql block that uses a cursor attribute %rowcount to display the name, department and basic salary of the name, department and basic salary of the first 5 employees getting the highest basic salary.(use explicit cursor

CREATE TABLE C_EMP(
EMPNO NUMBER(4)PRIMARY KEY,
ENAME VARCHAR2(20),
DETNO NUMBER(4),
SAL NUMBER(10,2)
);


INSERT INTO C_EMP VALUES(001,'sasha',100,1000);
COMMIT;

INSERT INTO C_EMP VALUES(002,'malcolm',200,1500);
COMMIT;

SET SERVEROUT ON;
DECLARE
  CURSOR c_emp IS
     SELECT ENAME,DEPTNO,SAL
     FROM EMP
     ORDER BY SAL DESC;

  v_name  EMP.ENAME%TYPE;
  v_dept  EMP.DEPTNO%TYPE;
  v_sal  EMP.SAL%TYPE;
BEGIN
  OPEN c_emp;
 
LOOP
  FETCH c_emp INTO v_name, v_dept, v_sal;
  EXIT WHEN c_emp%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE('Name :'|| v_name);
    DBMS_OUTPUT.PUT_LINE('Deptno:'|| v_dept);
    DBMS_OUTPUT.PUT_LINE('Salary :'|| v_sal);
 END LOOP;
 
  CLOSE c_emp;
END;
/
   
   