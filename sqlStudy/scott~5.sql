
1 �� ��(��) ���ԵǾ����ϴ�.


1 �� ��(��) ���ԵǾ����ϴ�.


1 �� ��(��) ���ԵǾ����ϴ�.


1 �� ��(��) ���ԵǾ����ϴ�.


1 �� ��(��) �����Ǿ����ϴ�.

SP2-0734: "2��°���� A���ԵǴ�..."(��)�� ���۵Ǵ� �� �� ���� ��� - ������ ���� ���õ˴ϴ�.

1 �� ��(��) ������Ʈ�Ǿ����ϴ�.


0�� �� ��(��) ������Ʈ�Ǿ����ϴ�.


0�� �� ��(��) ������Ʈ�Ǿ����ϴ�.


1 �� ��(��) ������Ʈ�Ǿ����ϴ�.


����� 63 �࿡�� �����ϴ� �� ���� �߻� -
UPDATE EMP SET COMM=100, SAL=NULL
WHERE ENAME=SANG
���� �߻� �����: 64 ��: 13
���� ���� -
SQL ����: ORA-00904: "SANG": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

1 �� ��(��) ������Ʈ�Ǿ����ϴ�.


1 �� ��(��) �����Ǿ����ϴ�.


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

13�� ���� ���õǾ����ϴ�. 


    DEPTNO DNAME          LOC          
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK     
        20 RESEARCH       DALLAS       
        30 SALES          CHICAGO      
        40 OPERATIONS     BOSTON       
        50 SECURITY       SEOUL        


����� 9 �࿡�� �����ϴ� �� ���� �߻� -
INSERT INTO DEPT
VALUES(50,'SECURITY','SEOUL')
���� ���� -
ORA-00001: unique constraint (SCOTT.PK_DEPT) violated


����� 11 �࿡�� �����ϴ� �� ���� �߻� -
INSERT INTO EMP
VALUES (7701,'SANG','MANAGER',7839,TO_DATE('2023-01-01','YYYY-MM-DD'),3000,NULL,50)
���� ���� -
ORA-00001: unique constraint (SCOTT.PK_EMP) violated


1 �� ��(��) ���ԵǾ����ϴ�.


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

14�� ���� ���õǾ����ϴ�. 


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

6�� ���� ���õǾ����ϴ�. 


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

14�� ���� ���õǾ����ϴ�. 


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

7�� ���� ���õǾ����ϴ�. 


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

8�� ���� ���õǾ����ϴ�. 


ENAME     
----------
SMITH
WARD
MARTIN
JAMES
MILLER
RONALDO

6�� ���� ���õǾ����ϴ�. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7702 RONALDO    CLERK                                100                      

6�� ���� ���õǾ����ϴ�. 


ENAME     
----------
WARD
MARTIN
BLAKE
CLARK
JAMES
SANG
RONALDO

7�� ���� ���õǾ����ϴ�. 


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

14�� ���� ���õǾ����ϴ�. 


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

8�� ���� ���õǾ����ϴ�. 


ENAME     
----------
WARD
KING
FORD
SANG


1 �� ��(��) ������Ʈ�Ǿ����ϴ�.


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

14�� ���� ���õǾ����ϴ�. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7701 SANG       MANAGER         7839 23/01/01                   100         50


1 �� ��(��) ������Ʈ�Ǿ����ϴ�.


1 �� ��(��) �����Ǿ����ϴ�.


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

13�� ���� ���õǾ����ϴ�. 


  COUNT(*)
----------
         2


�̸�                 �޿�
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

�̸�                 �޿�
---------- ----------
MILLER           1300
SANG                 

13�� ���� ���õǾ����ϴ�. 


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

13�� ���� ���õǾ����ϴ�. 


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

13�� ���� ���õǾ����ϴ�. 


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
SMITH              20            ��������
ALLEN              30        300 ��տ�����
WARD               30        500 ��տ�����
JONES              20            ������
MARTIN             30       1400 ��տ�����
BLAKE              30            ������
CLARK              10            ������
KING               10            ������
TURNER             30          0 ��տ�����
JAMES              30            ��������
FORD               20            ������

ENAME          DEPTNO       COMM CASEW
---------- ---------- ---------- -----
MILLER             10            ��տ�����
SANG               50        100 ��������

13�� ���� ���õǾ����ϴ�. 


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

13�� ���� ���õǾ����ϴ�. 


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

13�� ���� ���õǾ����ϴ�. 


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


����� 133 �࿡�� �����ϴ� �� ���� �߻� -
SELECT ENAME,SAL FROM EMP WHERE JOB=()






���� �߻� �����: 133 ��: 38
���� ���� -
SQL ����: ORA-00936: missing expression
00936. 00000 -  "missing expression"
*Cause:    
*Action:

1 �� ��(��) ���ԵǾ����ϴ�.


����� 170 �࿡�� �����ϴ� �� ���� �߻� -
TRUNC (VALUE,OPTION) TIME NUMBER
���� ���� -
�� �� ���� ���


����� 193 �࿡�� �����ϴ� �� ���� �߻� -
SELEC ENAME,COMM,NVL2(COMM,'O','X') FROM EMP
���� ���� -
�� �� ���� ���


����� 203 �࿡�� �����ϴ� �� ���� �߻� -
DROP TABLE SAL_DDL
���� ���� -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table SAL_DDL��(��) �����Ǿ����ϴ�.


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

14�� ���� ���õǾ����ϴ�. 


    DEPTNO DNAME          LOC          
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK     
        20 RESEARCH       DALLAS       
        30 SALES          CHICAGO      
        40 OPERATIONS     BOSTON       
        50 SECURITY       SEOUL        


����� 9 �࿡�� �����ϴ� �� ���� �߻� -
INSERT INTO DEPT
VALUES(50,'SECURITY','SEOUL')
���� ���� -
ORA-00001: unique constraint (SCOTT.PK_DEPT) violated


����� 11 �࿡�� �����ϴ� �� ���� �߻� -
INSERT INTO EMP
VALUES (7701,'SANG','MANAGER',7839,TO_DATE('2023-01-01','YYYY-MM-DD'),3000,NULL,50)
���� ���� -
ORA-00001: unique constraint (SCOTT.PK_EMP) violated


1 �� ��(��) ���ԵǾ����ϴ�.


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

15�� ���� ���õǾ����ϴ�. 


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

6�� ���� ���õǾ����ϴ�. 


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

15�� ���� ���õǾ����ϴ�. 


JOB      
---------

CLERK
SALESMAN
PRESIDENT
MANAGER
ANALYST

6�� ���� ���õǾ����ϴ�. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
      7566 JONES      MANAGER         7839 81/04/02       2975                    20
      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
      7902 FORD       ANALYST         7566 81/12/03       3000                    20
      7934 MILLER     CLERK           7782 82/01/23       1300                    10

7�� ���� ���õǾ����ϴ�. 


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

8�� ���� ���õǾ����ϴ�. 


ENAME     
----------
SMITH
WARD
MARTIN
JAMES
MILLER
RONALDO

6�� ���� ���õǾ����ϴ�. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 80/12/17        800                    20
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
      7900 JAMES      CLERK           7698 81/12/03        950                    30
      7934 MILLER     CLERK           7782 82/01/23       1300                    10
      7702 RONALDO    CLERK                                100                      

6�� ���� ���õǾ����ϴ�. 


ENAME     
----------
WARD
MARTIN
BLAKE
CLARK
JAMES
SANG
RONALDO

7�� ���� ���õǾ����ϴ�. 


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

14�� ���� ���õǾ����ϴ�. 


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

8�� ���� ���õǾ����ϴ�. 


ENAME     
----------
WARD
KING
FORD
SANG


1 �� ��(��) ������Ʈ�Ǿ����ϴ�.


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

15�� ���� ���õǾ����ϴ�. 


     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------- ---------- ---------- ----------
      7701 SANG       MANAGER         7839 23/01/01                   100         50


1 �� ��(��) ������Ʈ�Ǿ����ϴ�.


1 �� ��(��) �����Ǿ����ϴ�.


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

14�� ���� ���õǾ����ϴ�. 


  COUNT(*)
----------
         2


�̸�                 �޿�
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

�̸�                 �޿�
---------- ----------
MILLER           1300
SANG                 
                     

14�� ���� ���õǾ����ϴ�. 


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

14�� ���� ���õǾ����ϴ�. 


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


14�� ���� ���õǾ����ϴ�. 


JOB      
---------

CLERK
SALESMAN
PRESIDENT
MANAGER
ANALYST

6�� ���� ���õǾ����ϴ�. 


JOB         COUNT(*)   MAX(SAL)   MIN(SAL)   AVG(SAL)   SUM(SAL)
--------- ---------- ---------- ---------- ---------- ----------
                   1                                            
CLERK              3       1300        800 1016.66667       3050
SALESMAN           4       1600       1250       1400       5600
PRESIDENT          1       5000       5000       5000       5000
MANAGER            4       2975       2450 2758.33333       8275
ANALYST            1       3000       3000       3000       3000

6�� ���� ���õǾ����ϴ�. 


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
SMITH              20            ��������
ALLEN              30        300 ��տ�����
WARD               30        500 ��տ�����
JONES              20            ������
MARTIN             30       1400 ��տ�����
BLAKE              30            ������
CLARK              10            ������
KING               10            ������
TURNER             30          0 ��տ�����
JAMES              30            ��������
FORD               20            ������

ENAME          DEPTNO       COMM CASEW
---------- ---------- ---------- -----
MILLER             10            ��տ�����
SANG               50        100 ��������
                                 ��������

14�� ���� ���õǾ����ϴ�. 


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
                                                      

14�� ���� ���õǾ����ϴ�. 


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

14�� ���� ���õǾ����ϴ�. 


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

9�� ���� ���õǾ����ϴ�. 


    DEPTNO   AVG(SAL)   MAX(SAL)   MIN(SAL)   COUNT(*)
---------- ---------- ---------- ---------- ----------
        10 2916.66667       5000       1300          3
        20 2258.33333       3000        800          3
        30 1566.66667       2850        950          6
        50                                           1
                                                     1


����� 148 �࿡�� �����ϴ� �� ���� �߻� -
INSERT INTO EMP (EMPNO) VALUES(7703)
���� ���� -
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

14�� ���� ���õǾ����ϴ�. 


NVL(TO_CHAR(DEPTNO),'�μ�����')              NVL(AVG(SAL),0) NVL(MAX(SAL),0) NVL(MIN(SAL),0)   COUNT(*)
---------------------------------------- --------------- --------------- --------------- ----------
10                                            2916.66667            5000            1300          3
20                                            2258.33333            3000             800          3
30                                            1566.66667            2850             950          6
50                                                     0               0               0          1
�μ�����                                               0               0               0          1


����� 169 �࿡�� �����ϴ� �� ���� �߻� -
-=====================================
���� ���� -
�� �� ���� ���


NVL(TO_CHAR(DEPTNO),'�μ�����')              NVL(TRUNC(AVG(SAL),1),0) NVL(MAX(SAL),0) NVL(MIN(SAL),0)   COUNT(*)
---------------------------------------- ------------------------ --------------- --------------- ----------
10                                                         2916.6            5000            1300          3
20                                                         2258.3            3000             800          3
30                                                         1566.6            2850             950          6
50                                                              0               0               0          1
�μ�����                                                        0               0               0          1


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

14�� ���� ���õǾ����ϴ�. 


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

13�� ���� ���õǾ����ϴ�. 


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

14�� ���� ���õǾ����ϴ�. 


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

8�� ���� ���õǾ����ϴ�. 


Table SAL_DDL��(��) �����Ǿ����ϴ�.


Table SAL_DDL��(��) �����Ǿ����ϴ�.

