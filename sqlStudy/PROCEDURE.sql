SELECT * FROM EMP;

--CREATE OR REPLACE PROCEDURE PROCTEST6
--IS
--    V_SCORE NUMBER:=81;
--    V_GRADE CHAR(1):='C';
--    V_REWARD VARCHAR2(20);
--BEGIN
--    DBMS_OUTPUT.PUT_LINE('SCORE:'||V_SCORE);
--    IF V_SCORE >=90 THEN V_GRADE:='A';
--    ELSIF VI_SCORE >=80 THEN V_GRADE:='B';
--    ELSIF VI_SCORE >=70 THEN V_GRADE:='C';
--    ELSIF VI_SCORE >=60 THEN V_GRADE:='D';
--    ELSE V_GRADE:='F';
--    END IF;
--    DBMS_OUTPUT.PUT_LINE('GRADE:'||V_GRADE);
--END PROCTEST6;


--CREATE TABLE TB_SAMPLE01(
--    C_ID     CHAR(8) NOT NULL,
--    COMMNET     NVARCHAR2(50)    
--);
--ALTER TABLE TB_SAMPLE01 ADD TEMP_ID NUMBER;
--SELECT * FROM TB_SAMPLE01;
--
--EXEC PCD_SAMPLE_2(1, 'SAMPLE_COMMENT1');
--
--SELECT * FROM EMP;
--
--
--CREATE OR REPLACE PROCEDURE PCD_SAMPLE_2
--(
--    P_PARA_1 IN NUMBER,     -- Parameter 정의
--    P_PARA_2 IN VARCHAR2
--) 
--IS
--    V_PARA_1 VARCHAR2(20) := 'Q_';   -- 변수 정의
--BEGIN
--    V_PARA_1 := V_PARA_1 || P_PARA_2;
--    INSERT INTO  TB_SAMPLE01 (C_ID, COMMNET) VALUES (P_PARA_1, V_PARA_1);
--    DBMS_OUTPUT.PUT_LINE('PARA1 = ' || P_PARA_1);   -- Console 출력
--    DBMS_OUTPUT.PUT_LINE('PARA2 = ' || P_PARA_2);   -- Console 출력
--END;


DROP TABLE DEPT_CONST;
CREATE TABLE DEPT_CONST AS SELECT * FROM DEPT;
DELETE FROM DEPT_CONST;

SELECT * FROM DEPT_CONST;

DROP TABLE EMP_CURSOR;
CREATE TABLE EMP_CURSOR AS SELECT * FROM EMP;
SELECT * FROM EMP_CURSOR;
INSERT INTO EMP_CURSOR (EMPNO) VALUES(7702);

UPDATE EMP_CURSOR SET JOB='MANAGER', SAL=2000, ENAME='SANGNOM', MGR=7839, DEPTNO=10
WHERE EMPNO=7702;

DROP TABLE EMP_CURSOR;
CREATE TABLE EMP_CURSOR AS SELECT * FROM EMP;
SELECT * FROM EMP_CURSOR;

INSERT INTO EMP_CURSOR(EMPNO,ENAME,DEPTNO) VALUES(7701,'TIGER',10);
COMMIT;

COMMIT;


SELECT COUNT(*) FROM EMP WHERE SAL>2500;





