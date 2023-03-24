
1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삭제되었습니다.

SP2-0734: "2번째부터 A포함되는..."(으)로 시작되는 알 수 없는 명령 - 나머지 행은 무시됩니다.

1 행 이(가) 업데이트되었습니다.


0개 행 이(가) 업데이트되었습니다.


0개 행 이(가) 업데이트되었습니다.


1 행 이(가) 업데이트되었습니다.


명령의 63 행에서 시작하는 중 오류 발생 -
UPDATE EMP SET COMM=100, SAL=NULL
WHERE ENAME=SANG
오류 발생 명령행: 64 열: 13
오류 보고 -
SQL 오류: ORA-00904: "SANG": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

1 행 이(가) 업데이트되었습니다.


1 행 이(가) 삭제되었습니다.


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50

13개 행이 선택되었습니다. 


    DEPTNO DNAME          LOC          
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK     
        20 RESEARCH       DALLAS       
        30 SALES          CHICAGO      
        40 OPERATIONS     BOSTON       
        50 SECURITY       SEOUL        


명령의 9 행에서 시작하는 중 오류 발생 -
INSERT INTO DEPT
VALUES(50,'SECURITY','SEOUL')
오류 보고 -
ORA-00001: unique constraint (SCOTT.PK_DEPT) violated


명령의 11 행에서 시작하는 중 오류 발생 -
INSERT INTO EMP
VALUES (7701,'SANG','MANAGER',7839,TO_DATE('2023-01-01','YYYY-MM-DD'),3000,NULL,50)
오류 보고 -
ORA-00001: unique constraint (SCOTT.PK_EMP) violated


1 행 이(가) 삽입되었습니다.


     EMPNO JOB              MGR ENAME             SAL       COMM
---------- --------- ---------- ---------- ---------- ----------
      7369 CLERK           7902 SMITH             800           
      7499 SALESMAN        7698 ALLEN            1600        300
      7521 SALESMAN        7698 WARD             1250        500
      7566 MANAGER         7839 JONES            2975           
      7654 SALESMAN        7698 MARTIN           1250       1400
      7698 MANAGER         7839 BLAKE            2850           
      7782 MANAGER         7839 CLARK            2450           
      7839 PRESIDENT            KING             5000           
      7844 SALESMAN        7698 TURNER           1500          0
      7900 CLERK           7698 JAMES             950           
      7902 ANALYST         7566 FORD             3000           

     EMPNO JOB              MGR ENAME             SAL       COMM
---------- --------- ---------- ---------- ---------- ----------
      7934 CLERK           7782 MILLER           1300           
      7701 MANAGER         7839 SANG                         100
      7702 CLERK                RONALDO           100           

14개 행이 선택되었습니다. 


     EMPNO ENAME      JOB      
---------- ---------- ---------
      7844 TURNER     SALESMAN 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7702 RONALDO    CLERK                                100                      

6개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7902 FORD       ANALYST         7566 81/12/03       3000                    20
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7702 RONALDO    CLERK                                100                      
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7369 SMITH      CLERK           7902 80/12/17        800                    20

14개 행이 선택되었습니다. 


JOB      
---------
CLERK
SALESMAN
PRESIDENT
MANAGER
ANALYST


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20
      7934 MILLER     CLERK           7782 82/01/23       1300                    10

7개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7702 RONALDO    CLERK                                100                      

8개 행이 선택되었습니다. 


ENAME     
----------
SMITH
WARD
MARTIN
JAMES
MILLER
RONALDO

6개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7702 RONALDO    CLERK                                100                      

6개 행이 선택되었습니다. 


ENAME     
----------
WARD
MARTIN
BLAKE
CLARK
JAMES
SANG
RONALDO

7개 행이 선택되었습니다. 


ENAME     
----------
SMITH
ALLEN
WARD
JONES
MARTIN
BLAKE
CLARK
KING
TURNER
JAMES
FORD

ENAME     
----------
MILLER
SANG
RONALDO

14개 행이 선택되었습니다. 


ENAME     
----------
ALLEN


ENAME     
----------
ALLEN


ENAME     
----------
ALLEN


ENAME     
----------
ALLEN
WARD
MARTIN
BLAKE
CLARK
JAMES
SANG
RONALDO

8개 행이 선택되었습니다. 


ENAME     
----------
WARD
KING
FORD
SANG


1 행 이(가) 업데이트되었습니다.


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7702 RONALDO    MANAGER                                                       

14개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7701 SANG       MANAGER         7839 23/01/01                   100         50


1 행 이(가) 업데이트되었습니다.


1 행 이(가) 삭제되었습니다.


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50

13개 행이 선택되었습니다. 


  COUNT(*)
----------
         2


이름                 급여
---------- ----------
SMITH             800
ALLEN            1600
WARD             1250
JONES            2975
MARTIN           1250
BLAKE            2850
CLARK            2450
KING             5000
TURNER           1500
JAMES             950
FORD             3000

이름                 급여
---------- ----------
MILLER           1300
SANG                 

13개 행이 선택되었습니다. 


    MAXSAL   MIN(SAL) MAX(ENAME)
---------- ---------- ----------
      5000        800 WARD      


  AVG(SAL)   SUM(SAL)
---------- ----------
2077.08333      24925


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50

13개 행이 선택되었습니다. 


JOB      
---------
CLERK
SALESMAN
SALESMAN
MANAGER
SALESMAN
MANAGER
MANAGER
PRESIDENT
SALESMAN
CLERK
ANALYST

JOB      
---------
CLERK
MANAGER

13개 행이 선택되었습니다. 


JOB      
---------
CLERK
SALESMAN
PRESIDENT
MANAGER
ANALYST


JOB         COUNT(*)   MAX(SAL)   MIN(SAL)   AVG(SAL)   SUM(SAL)
--------- ---------- ---------- ---------- ---------- ----------
CLERK              3       1300        800 1016.66667       3050
SALESMAN           4       1600       1250       1400       5600
PRESIDENT          1       5000       5000       5000       5000
MANAGER            4       2975       2450 2758.33333       8275
ANALYST            1       3000       3000       3000       3000


JOB         COUNT(*)   MAX(SAL)   MIN(SAL)   AVG(SAL)   SUM(SAL)
--------- ---------- ---------- ---------- ---------- ----------
SALESMAN           4       1600       1250       1400       5600
PRESIDENT          1       5000       5000       5000       5000
MANAGER            4       2975       2450 2758.33333       8275
ANALYST            1       3000       3000       3000       3000


JOB         COUNT(*)   MAX(SAL)   MIN(SAL)   AVG(SAL)   SUM(SAL)
--------- ---------- ---------- ---------- ---------- ----------
ANALYST            1       3000       3000       3000       3000
CLERK              3       1300        800 1016.66667       3050
PRESIDENT          1       5000       5000       5000       5000


JOB         COUNT(*)   MAX(SAL)   MIN(SAL)   AVG(SAL)   SUM(SAL)
--------- ---------- ---------- ---------- ---------- ----------
SALESMAN           4       1600       1250       1400       5600
PRESIDENT          1       5000       5000       5000       5000
MANAGER            4       2975       2450 2758.33333       8275
ANALYST            1       3000       3000       3000       3000


ENAME          DEPTNO       COMM CASEW
---------- ---------- ---------- -----
SMITH              20            저연봉자
ALLEN              30        300 평균연봉자
WARD               30        500 평균연봉자
JONES              20            고연봉자
MARTIN             30       1400 평균연봉자
BLAKE              30            고연봉자
CLARK              10            고연봉자
KING               10            고연봉자
TURNER             30          0 평균연봉자
JAMES              30            저연봉자
FORD               20            고연봉자

ENAME          DEPTNO       COMM CASEW
---------- ---------- ---------- -----
MILLER             10            평균연봉자
SANG               50        100 저연봉자

13개 행이 선택되었습니다. 


ENAME             SAL
---------- ----------
SMITH             800
JONES            2975
BLAKE            2850
CLARK            2450
JAMES             950


ENAME             SAL       COMM        PAY       PAY2
---------- ---------- ---------- ---------- ----------
SMITH             800                   800        800
ALLEN            1600        300       1900       1900
WARD             1250        500       1750       1750
JONES            2975                  2975       2975
MARTIN           1250       1400       2650       2650
BLAKE            2850                  2850       2850
CLARK            2450                  2450       2450
KING             5000                  5000       5000
TURNER           1500          0       1500       1500
JAMES             950                   950        950
FORD             3000                  3000       3000

ENAME             SAL       COMM        PAY       PAY2
---------- ---------- ---------- ---------- ----------
MILLER           1300                  1300       1300
SANG                         100                      

13개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50

13개 행이 선택되었습니다. 


    DEPTNO DNAME          LOC          
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK     
        20 RESEARCH       DALLAS       
        30 SALES          CHICAGO      
        40 OPERATIONS     BOSTON       
        50 SECURITY       SEOUL        


ENAME             SAL
---------- ----------
MILLER           1300


명령의 133 행에서 시작하는 중 오류 발생 -
SELECT ENAME,SAL FROM EMP WHERE JOB=()






오류 발생 명령행: 133 열: 38
오류 보고 -
SQL 오류: ORA-00936: missing expression
00936. 00000 -  "missing expression"
*Cause:    
*Action:

1 행 이(가) 삽입되었습니다.


명령의 170 행에서 시작하는 중 오류 발생 -
TRUNC (VALUE,OPTION) TIME NUMBER
오류 보고 -
알 수 없는 명령


명령의 193 행에서 시작하는 중 오류 발생 -
SELEC ENAME,COMM,NVL2(COMM,'O','X') FROM EMP
오류 보고 -
알 수 없는 명령


명령의 203 행에서 시작하는 중 오류 발생 -
DROP TABLE SAL_DDL
오류 보고 -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table SAL_DDL이(가) 생성되었습니다.


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7703                                                                          

14개 행이 선택되었습니다. 


    DEPTNO DNAME          LOC          
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK     
        20 RESEARCH       DALLAS       
        30 SALES          CHICAGO      
        40 OPERATIONS     BOSTON       
        50 SECURITY       SEOUL        


명령의 9 행에서 시작하는 중 오류 발생 -
INSERT INTO DEPT
VALUES(50,'SECURITY','SEOUL')
오류 보고 -
ORA-00001: unique constraint (SCOTT.PK_DEPT) violated


명령의 11 행에서 시작하는 중 오류 발생 -
INSERT INTO EMP
VALUES (7701,'SANG','MANAGER',7839,TO_DATE('2023-01-01','YYYY-MM-DD'),3000,NULL,50)
오류 보고 -
ORA-00001: unique constraint (SCOTT.PK_EMP) violated


1 행 이(가) 삽입되었습니다.


     EMPNO JOB              MGR ENAME             SAL       COMM
---------- --------- ---------- ---------- ---------- ----------
      7369 CLERK           7902 SMITH             800           
      7499 SALESMAN        7698 ALLEN            1600        300
      7521 SALESMAN        7698 WARD             1250        500
      7566 MANAGER         7839 JONES            2975           
      7654 SALESMAN        7698 MARTIN           1250       1400
      7698 MANAGER         7839 BLAKE            2850           
      7782 MANAGER         7839 CLARK            2450           
      7839 PRESIDENT            KING             5000           
      7844 SALESMAN        7698 TURNER           1500          0
      7900 CLERK           7698 JAMES             950           
      7902 ANALYST         7566 FORD             3000           

     EMPNO JOB              MGR ENAME             SAL       COMM
---------- --------- ---------- ---------- ---------- ----------
      7934 CLERK           7782 MILLER           1300           
      7701 MANAGER         7839 SANG                         100
      7703                                                      
      7702 CLERK                RONALDO           100           

15개 행이 선택되었습니다. 


     EMPNO ENAME      JOB      
---------- ---------- ---------
      7844 TURNER     SALESMAN 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7702 RONALDO    CLERK                                100                      

6개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7902 FORD       ANALYST         7566 81/12/03       3000                    20
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7703                                                                          
      7702 RONALDO    CLERK                                100                      
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7369 SMITH      CLERK           7902 80/12/17        800                    20

15개 행이 선택되었습니다. 


JOB      
---------

CLERK
SALESMAN
PRESIDENT
MANAGER
ANALYST

6개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20
      7934 MILLER     CLERK           7782 82/01/23       1300                    10

7개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7702 RONALDO    CLERK                                100                      

8개 행이 선택되었습니다. 


ENAME     
----------
SMITH
WARD
MARTIN
JAMES
MILLER
RONALDO

6개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7702 RONALDO    CLERK                                100                      

6개 행이 선택되었습니다. 


ENAME     
----------
WARD
MARTIN
BLAKE
CLARK
JAMES
SANG
RONALDO

7개 행이 선택되었습니다. 


ENAME     
----------
SMITH
ALLEN
WARD
JONES
MARTIN
BLAKE
CLARK
KING
TURNER
JAMES
FORD

ENAME     
----------
MILLER
SANG
RONALDO

14개 행이 선택되었습니다. 


ENAME     
----------
ALLEN


ENAME     
----------
ALLEN


ENAME     
----------
ALLEN


ENAME     
----------
ALLEN
WARD
MARTIN
BLAKE
CLARK
JAMES
SANG
RONALDO

8개 행이 선택되었습니다. 


ENAME     
----------
WARD
KING
FORD
SANG


1 행 이(가) 업데이트되었습니다.


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7703                                                                          
      7702 RONALDO    MANAGER                                                       

15개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7701 SANG       MANAGER         7839 23/01/01                   100         50


1 행 이(가) 업데이트되었습니다.


1 행 이(가) 삭제되었습니다.


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7703                                                                          

14개 행이 선택되었습니다. 


  COUNT(*)
----------
         2


이름                 급여
---------- ----------
SMITH             800
ALLEN            1600
WARD             1250
JONES            2975
MARTIN           1250
BLAKE            2850
CLARK            2450
KING             5000
TURNER           1500
JAMES             950
FORD             3000

이름                 급여
---------- ----------
MILLER           1300
SANG                 
                     

14개 행이 선택되었습니다. 


    MAXSAL   MIN(SAL) MAX(ENAME)
---------- ---------- ----------
      5000        800 WARD      


  AVG(SAL)   SUM(SAL)
---------- ----------
2077.08333      24925


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7703                                                                          

14개 행이 선택되었습니다. 


JOB      
---------
CLERK
SALESMAN
SALESMAN
MANAGER
SALESMAN
MANAGER
MANAGER
PRESIDENT
SALESMAN
CLERK
ANALYST

JOB      
---------
CLERK
MANAGER


14개 행이 선택되었습니다. 


JOB      
---------

CLERK
SALESMAN
PRESIDENT
MANAGER
ANALYST

6개 행이 선택되었습니다. 


JOB         COUNT(*)   MAX(SAL)   MIN(SAL)   AVG(SAL)   SUM(SAL)
--------- ---------- ---------- ---------- ---------- ----------
                   1                                            
CLERK              3       1300        800 1016.66667       3050
SALESMAN           4       1600       1250       1400       5600
PRESIDENT          1       5000       5000       5000       5000
MANAGER            4       2975       2450 2758.33333       8275
ANALYST            1       3000       3000       3000       3000

6개 행이 선택되었습니다. 


JOB         COUNT(*)   MAX(SAL)   MIN(SAL)   AVG(SAL)   SUM(SAL)
--------- ---------- ---------- ---------- ---------- ----------
SALESMAN           4       1600       1250       1400       5600
PRESIDENT          1       5000       5000       5000       5000
MANAGER            4       2975       2450 2758.33333       8275
ANALYST            1       3000       3000       3000       3000


JOB         COUNT(*)   MAX(SAL)   MIN(SAL)   AVG(SAL)   SUM(SAL)
--------- ---------- ---------- ---------- ---------- ----------
ANALYST            1       3000       3000       3000       3000
CLERK              3       1300        800 1016.66667       3050
PRESIDENT          1       5000       5000       5000       5000
                   1                                            


JOB         COUNT(*)   MAX(SAL)   MIN(SAL)   AVG(SAL)   SUM(SAL)
--------- ---------- ---------- ---------- ---------- ----------
SALESMAN           4       1600       1250       1400       5600
PRESIDENT          1       5000       5000       5000       5000
MANAGER            4       2975       2450 2758.33333       8275
ANALYST            1       3000       3000       3000       3000


ENAME          DEPTNO       COMM CASEW
---------- ---------- ---------- -----
SMITH              20            저연봉자
ALLEN              30        300 평균연봉자
WARD               30        500 평균연봉자
JONES              20            고연봉자
MARTIN             30       1400 평균연봉자
BLAKE              30            고연봉자
CLARK              10            고연봉자
KING               10            고연봉자
TURNER             30          0 평균연봉자
JAMES              30            저연봉자
FORD               20            고연봉자

ENAME          DEPTNO       COMM CASEW
---------- ---------- ---------- -----
MILLER             10            평균연봉자
SANG               50        100 저연봉자
                                 저연봉자

14개 행이 선택되었습니다. 


ENAME             SAL
---------- ----------
SMITH             800
JONES            2975
BLAKE            2850
CLARK            2450
JAMES             950


ENAME             SAL       COMM        PAY       PAY2
---------- ---------- ---------- ---------- ----------
SMITH             800                   800        800
ALLEN            1600        300       1900       1900
WARD             1250        500       1750       1750
JONES            2975                  2975       2975
MARTIN           1250       1400       2650       2650
BLAKE            2850                  2850       2850
CLARK            2450                  2450       2450
KING             5000                  5000       5000
TURNER           1500          0       1500       1500
JAMES             950                   950        950
FORD             3000                  3000       3000

ENAME             SAL       COMM        PAY       PAY2
---------- ---------- ---------- ---------- ----------
MILLER           1300                  1300       1300
SANG                         100                      
                                                      

14개 행이 선택되었습니다. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7703                                                                          

14개 행이 선택되었습니다. 


    DEPTNO DNAME          LOC          
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK     
        20 RESEARCH       DALLAS       
        30 SALES          CHICAGO      
        40 OPERATIONS     BOSTON       
        50 SECURITY       SEOUL        


ENAME             SAL
---------- ----------
MILLER           1300


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

9개 행이 선택되었습니다. 


    DEPTNO   AVG(SAL)   MAX(SAL)   MIN(SAL)   COUNT(*)
---------- ---------- ---------- ---------- ----------
        10 2916.66667       5000       1300          3
        20 2258.33333       3000        800          3
        30 1566.66667       2850        950          6
        50                                           1
                                                     1


명령의 148 행에서 시작하는 중 오류 발생 -
INSERT INTO EMP (EMPNO) VALUES(7703)
오류 보고 -
ORA-00001: unique constraint (SCOTT.PK_EMP) violated


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7703                                                                          

14개 행이 선택되었습니다. 


NVL(TO_CHAR(DEPTNO),'부서없음')              NVL(AVG(SAL),0) NVL(MAX(SAL),0) NVL(MIN(SAL),0)   COUNT(*)
---------------------------------------- --------------- --------------- --------------- ----------
10                                            2916.66667            5000            1300          3
20                                            2258.33333            3000             800          3
30                                            1566.66667            2850             950          6
50                                                     0               0               0          1
부서없음                                               0               0               0          1


명령의 169 행에서 시작하는 중 오류 발생 -
-=====================================
오류 보고 -
알 수 없는 명령


NVL(TO_CHAR(DEPTNO),'부서없음')              NVL(TRUNC(AVG(SAL),1),0) NVL(MAX(SAL),0) NVL(MIN(SAL),0)   COUNT(*)
---------------------------------------- ------------------------ --------------- --------------- ----------
10                                                         2916.6            5000            1300          3
20                                                         2258.3            3000             800          3
30                                                         1566.6            2850             950          6
50                                                              0               0               0          1
부서없음                                                        0               0               0          1


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7839 KING       PRESIDENT            81/11/17       5000                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7701 SANG       MANAGER         7839 23/01/01                   100         50
      7703                                                                          

14개 행이 선택되었습니다. 


HIREDATE     DEPTNO   COUNT(*)
-------- ---------- ----------
81/02/22         30          1
81/05/01         30          1
81/09/08         30          1
81/09/28         30          1
81/02/20         30          1
82/01/23         10          1
80/12/17         20          1
81/11/17         10          1
81/12/03         20          1
23/01/01         50          1
81/04/02         20          1

HIREDATE     DEPTNO   COUNT(*)
-------- ---------- ----------
81/06/09         10          1
81/12/03         30          1

13개 행이 선택되었습니다. 


ENAME            COMM N
---------- ---------- -
SMITH                 X
ALLEN             300 O
WARD              500 O
JONES                 X
MARTIN           1400 O
BLAKE                 X
CLARK                 X
KING                  X
TURNER              0 O
JAMES                 X
FORD                  X

ENAME            COMM N
---------- ---------- -
MILLER                X
SANG              100 O
                      X

14개 행이 선택되었습니다. 


N   COUNT(*)
- ----------
X          9
O          5


DEPARTMENT_NAM MANAGER_NA MANAGER_SALARY EMPLOYEE_COUNT AVERAGE_SALARY
-------------- ---------- -------------- -------------- --------------
SALES          BLAKE                2850              5           1310
ACCOUNTING     CLARK                2450              1           1300
RESEARCH       JONES                2975              1           3000
RESEARCH       KING                 5000              1           2975
SECURITY       KING                 5000              1               
SALES          KING                 5000              1           2850
ACCOUNTING     KING                 5000              1           2450
RESEARCH       FORD                 3000              1            800

8개 행이 선택되었습니다. 


Table SAL_DDL이(가) 삭제되었습니다.


Table SAL_DDL이(가) 생성되었습니다.

