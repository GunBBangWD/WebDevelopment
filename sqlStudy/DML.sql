/*
    INSERT INTO <TABLE_NAME>(COL1,COL2,......)
    VALUES(VAL1,VAL2,......)
*/

SELECT * FROM EMP;
SELECT * FROM DEPT;

INSERT INTO DEPT
VALUES(50,'SECURITY','SEOUL');
INSERT INTO EMP
VALUES (7701,'SANG','MANAGER',7839,TO_DATE('2023-01-01','YYYY-MM-DD'),3000,NULL,50);


INSERT INTO EMP(JOB,ENAME,SAL,EMPNO)
VALUES('CLERK','RONALDO',100,7702);

/*
    SELECT COL1,COL2,COL3,......
    FROM <TABLE_NAME>;
*/
SELECT EMP.EMPNO,JOB,MGR,ENAME,SAL,COMM FROM EMP;

SELECT EMPNO,ENAME,JOB FROM EMP WHERE EMPNO='7844';

SELECT * FROM EMP WHERE JOB='CLERK' OR SAL>=3000;

SELECT * FROM EMP ORDER BY EMPNO DESC;

SELECT DISTINCT JOB FROM EMP;

SELECT * FROM EMP WHERE SAL BETWEEN 1300 AND 3000;

SELECT * FROM EMP WHERE JOB IN('CLERK','MANAGER');

SELECT ENAME FROM EMP WHERE SAL<1500;

SELECT * FROM EMP WHERE ENAME IN(SELECT ENAME FROM EMP WHERE SAL<1500);

--LIKE  % 0,1,여러개인 문자 _ 하나의 문자
--2번째부터 A포함되는
SELECT ENAME FROM EMP WHERE ENAME LIKE '%_A%';
SELECT ename FROM emp WHERE ename LIKE '%';
SELECT ename FROM emp WHERE ename LIKE 'ALLEN';
SELECT ename FROM emp WHERE ename LIKE 'ALL%';
SELECT ename FROM emp WHERE ename LIKE '%EN';
--A가 포함되는 모든것
SELECT ename FROM emp WHERE ename LIKE '%A%';
--4글자인 문자
SELECT ename FROM emp WHERE ename LIKE '____';

/*
    UPDATE <TABLE_NAME>
    SET COL1=VAL1,COL2=VAL2,...
    WHERE CONDITION;
*/
UPDATE EMP SET JOB='MANAGER', SAL=NULL
WHERE EMPNO=7702;

SELECT * FROM EMP;

SELECT * FROM EMP WHERE EMPNO=7701;

UPDATE EMP SET COMM=100, SAL=NULL
WHERE ENAME='SANG';

/*
    DELETE FROM <TABLE_NAME>
    WHERE CONDITION;
*/
DELETE FROM EMP WHERE EMPNO=7702;
SELECT *FROM EMP;

/*
    MIN() MAX() COUNT() AVG() SUM()
    별칭 (Aliases)
*/
SELECT COUNT(*) FROM EMP WHERE SAL>=3000;

SELECT E.ENAME 이름,E.SAL 급여 FROM EMP E;
SELECT MAX(SAL) AS MAXSAL,MIN(SAL),MAX(ENAME) FROM EMP;

SELECT AVG(SAL), SUM(SAL) FROM EMP;

/*
    GROUP BY
    SELECT COLS(COUNT MAX MIN SUM AVG) FROM <TABLE_NAME> 
    WHERE CONDITION 
    GROUP BY <COLS> ORDER BY <COLS>
    HAVING CONDITION ORDER BY <COLS>
    
*/
SELECT * FROM EMP;
SELECT JOB FROM EMP;
SELECT JOB FROM EMP GROUP BY JOB;
SELECT JOB,COUNT(*),MAX(SAL),MIN(SAL),AVG(SAL),SUM(SAL) 
FROM EMP GROUP BY JOB;

SELECT JOB,COUNT(*),MAX(SAL),MIN(SAL),AVG(SAL),SUM(SAL) 
FROM EMP GROUP BY JOB HAVING MIN(SAL)>1000;

SELECT JOB,COUNT(*),MAX(SAL),MIN(SAL),AVG(SAL),SUM(SAL) 
FROM EMP GROUP BY JOB HAVING MAX(COMM) IS NULL ORDER BY JOB;


SELECT JOB,COUNT(*),MAX(SAL),MIN(SAL),AVG(SAL),SUM(SAL)
FROM EMP GROUP BY JOB HAVING MIN(SAL)>1000;


/* CASE */
SELECT ENAME, DEPTNO, COMM, CASE WHEN SAL>2000 THEN '고연봉자' WHEN SAL>=1000 THEN '평균연봉자' ELSE '저연봉자' END FROM EMP;
/*  조건절에서의 CASE*/

SELECT ENAME,SAL FROM EMP WHERE JOB=(
CASE
    WHEN SAL<1000 THEN 'CLERK'
    WHEN SAL>2000 THEN 'MANAGER'
    ELSE 'BOSS'
END);

/*
    NULL FUNCTION
        DB NVL() COALESCE()
*/
SELECT ENAME, SAL, COMM, SAL+NVL(COMM,0)AS PAY--COMM이 없으면 0으로 보겠따
    ,SAL+COALESCE(COMM,0) AS PAY2
    FROM EMP;
    
    SELECT * FROM EMP;
    SELECT * FROM DEPT;
    
SELECT ENAME,SAL FROM EMP WHERE JOB='CLERK' AND SAL>1000;
SELECT * FROM EMP WHERE JOB=(
CASE 
    WHEN SAL>1000 AND JOB!='CLERK' THEN JOB
END);

--===========================================
SELECT DEPTNO
    ,AVG(SAL)
    ,MAX(SAL)
    ,MIN(SAL)
    ,COUNT(*)
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

INSERT INTO EMP (EMPNO) VALUES(7703);
SELECT * FROM EMP;

-- DEPTNO 는 INT 인데 대체제가 문자열이라 오류
--SELECT NVL(DEPTNO,'부서없음')
--    ,AVG(SAL)
--    ,MAX(SAL)
--    ,MIN(SAL)
--    ,COUNT(*)
--FROM EMP
--GROUP BY DEPTNO
--ORDER BY DEPTNO;

SELECT NVL(TO_CHAR(DEPTNO),'부서없음')
    ,NVL(AVG(SAL),0)
    ,NVL(MAX(SAL),0)
    ,NVL(MIN(SAL),0)
    ,COUNT(*)
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;
-=====================================
--TRUNC (VALUE,OPTION) TIME NUMBER 자리수 표시 -1은 10자리부터 표시 1은 소수점 첫째자리 까지 표시
SELECT NVL(TO_CHAR(DEPTNO),'부서없음')
    ,NVL(TRUNC(AVG(SAL),1),0)
    ,NVL(MAX(SAL),0)
    ,NVL(MIN(SAL),0)
    ,COUNT(*)
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- FROM DUAL
SELECT * FROM EMP;

--입사 년도별 부서 입사자수
SELECT HIREDATE,DEPTNO,COUNT(*)
FROM EMP
WHERE DEPTNO IS NOT NULL
GROUP BY HIREDATE,DEPTNO;

SELECT ENAME,COMM,NVL2(COMM,'O','X') FROM EMP;

SELECT NVL2(COMM,'O','X'),COUNT(*)
FROM EMP
GROUP BY NVL2(COMM,'O','X');

SELECT d.DNAME AS department_name, mgr.ENAME AS manager_name, mgr.SAL AS manager_salary,
       COUNT(emp.EMPNO) AS employee_count, AVG(emp.SAL) AS average_salary
FROM EMP emp
INNER JOIN DEPT d ON emp.DEPTNO = d.DEPTNO
INNER JOIN EMP mgr ON emp.MGR = mgr.EMPNO
GROUP BY d.DNAME, mgr.ENAME, mgr.JOB, mgr.SAL;

--CREATE INSERT SELECT 활용

--CREATE INSERT SELECT 활용
   DROP TABLE SAL_DML; DROP TABLE SAL_DDL; DROP TABLE SAL_TCL;
    CREATE TABLE SAL_DDL AS SELECT * FROM SALGRADE WHERE 1<>1;
    CREATE TABLE SAL_DML AS SELECT * FROM SALGRADE WHERE 1<>1;
    CREATE TABLE SAL_TCL AS SELECT * FROM SALGRADE WHERE 1<>1;
    
    INSERT INTO SAL_DDL(GRADE,LOSAL)
    SELECT GRADE,LOSAL
    FROM SALGRADE
    WHERE GRADE=2;
    
    INSERT INTO SAL_DDL (GRADE,HISAL)
    SELECT 3,1000 FROM DUAL;
    
    INSERT ALL
        WHEN LOSAL>=2001 THEN   
            INTO SAL_DML VALUES (GRADE,LOSAL,HISAL)
        WHEN LOSAL>=1000 THEN
            INTO SAL_TCL VALUES (GRADE,LOSAL,HISAL)
        ELSE
            INTO SAL_DDL VALUES (GRADE,LOSAL,HISAL) 
    SELECT GRADE,LOSAL,HISAL
    FROM SALGRADE;
    SELECT * FROM SAL_DML;
    SELECT * FROM SAL_TCL;
    SELECT * FROM SAL_DDL;

    SELECT * FROM EMP;
    SELECT * FROM DEPT;









    
    




