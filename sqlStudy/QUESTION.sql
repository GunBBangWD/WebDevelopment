-- 1. ��� ����� �̸�(FIRST_NAME, LAST_NAME)�� ��ȸ�϶�.
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES;

-- 2. ��� ����� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES;

-- 3. ��� ���� ���� ��ȸ�϶�.
SELECT CITY FROM LOCATIONS;

-- 4. �̸�(FIRST_NAME)�� M ���� �����ϴ� ����� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE INSTR(FIRST_NAME,'M')!=0;

-- 5. �̸�(FIRST_NAME)�� �� ��° ���ڰ� 'a'�� ����� �̸�(FIRST_NAME)�� ������ ��ȸ�϶�.
SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE INSTR(FIRST_NAME,'a')=2;

-- 6. ���� ���� �������� �����϶�.
SELECT CITY FROM LOCATIONS ORDER BY CITY;

-- 7. �μ� ���� �������� �����϶�.
SELECT DEPARTMENT_NAME FROM DEPARTMENTS ORDER BY DEPARTMENT_NAME DESC;

-- 8. ������ 7000 �̻��� ������� ��� ������ ������(��������)���� �����϶�.
SELECT * FROM EMPLOYEES WHERE SALARY>=7000 ORDER BY SALARY;

-- 9. �μ�Ƽ��(COMMISSION_PCT)�� ���� �ʴ� ������� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE COMMISSION_PCT IS NULL;

-- 10. �μ�Ƽ��(COMMISSION_PCT)�� �޴� ������� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE COMMISSION_PCT IS NOT NULL;

-- 11. 2007�� 06�� 21�Ͽ� �Ի��� ����� �����ȣ, �̸�(FIRST_NAME, LAST_NAME) �׸��� �μ���ȣ�� ��ȸ�϶�.
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID FROM EMPLOYEES WHERE HIRE_DATE='2007/06/21';

-- 12. 2006�⿡ �Ի��� ����� �����ȣ�� �Ի����� ��ȸ�϶�.
SELECT EMPLOYEE_ID, HIRE_DATE FROM EMPLOYEES WHERE EXTRACT(YEAR FROM HIRE_DATE)=2006;

-- 13. �̸�(FIRST_NAME)�� ���̰� 5���� �̻��� ����� ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE LENGTH(FIRST_NAME)>=5;
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '_____%';


-- 14. �μ���ȣ�� ������� ��ȸ�϶�. (�μ���ȣ �������� ����)
SELECT DEPARTMENT_ID,COUNT(*) FROM EMPLOYEES GROUP BY DEPARTMENT_ID ORDER BY DEPARTMENT_ID;

-- 15. ���� ���̵� ��� ������ ��ȸ�϶�. (���� ���̵� �������� ����)
SELECT JOB_ID,AVG(SALARY) FROM EMPLOYEES GROUP BY JOB_ID ORDER BY JOB_ID DESC;

-- 16. ��簡 �ִ� ������� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL;

-- 17. ��簡 ���� ������� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IS NULL;

-- 18. ��� ������� �����ȣ, �̸�(FIRST_NAME, LAST_NAME), �μ���ȣ �׸��� �μ����� ��ȸ�϶�.
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.LAST_NAME, E.DEPARTMENT_ID,D.DEPARTMENT_NAME FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

-- 19. ��� �μ��� �μ���� ���ø��� ��ȸ�϶�.
SELECT * FROM DEPARTMENTS;
SELECT * FROM LOCATIONS;
SELECT D.DEPARTMENT_NAME, L.CITY FROM DEPARTMENTS D
LEFT JOIN LOCATIONS L ON D.LOCATION_ID=L.LOCATION_ID;

-- 20. ��� ������� �����ȣ, �μ���, �������� ��ȸ�϶�.

SELECT E.EMPLOYEE_ID �����ȣ, D.DEPARTMENT_NAME �μ���, J.JOB_TITLE ������ FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
LEFT JOIN JOBS J ON E.JOB_ID=J.JOB_ID;

-- 21. ��� ������� �����ȣ, �μ���, ������, ���ø��� ��ȸ�϶�.
SELECT E.EMPLOYEE_ID �����ȣ, D.DEPARTMENT_NAME �μ���, J.JOB_TITLE, L.CITY ���ø� FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
LEFT JOIN JOBS J ON E.JOB_ID=J.JOB_ID
LEFT JOIN LOCATIONS L ON D.LOCATION_ID=L.LOCATION_ID;

-- 22. 10��, 20��, 30�� �μ����� �ٹ��ϴ� ������� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID=(CASE
WHEN DEPARTMENT_ID=10 THEN 10
WHEN DEPARTMENT_ID=20 THEN 20
WHEN DEPARTMENT_ID=30 THEN 30
ELSE NULL
END);

SELECT * FROM DEPARTMENTS;

-- 23. 6�� �̸��� ����� �ٹ��ϴ� �μ��� �̸��� ��ȸ�϶�.
SELECT D.DEPARTMENT_NAME FROM EMPLOYEES E
RIGHT JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
GROUP BY E.DEPARTMENT_ID, D.DEPARTMENT_NAME 
HAVING COUNT(*)<6 ;

SELECT D.DEPARTMENT_NAME FROM EMPLOYEES e 
JOIN DEPARTMENTS d ON E.DEPARTMENT_ID =D.DEPARTMENT_ID  GROUP BY D.DEPARTMENT_NAME HAVING COUNT(*)<6;

SELECT D.DEPARTMENT_NAME FROM DEPARTMENTS D
WHERE (SELECT COUNT(*) FROM EMPLOYEES E WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID) < 6;

-- 24. 4�� �̸��� ����� �ٹ��ϴ� �μ��� ��� ������ �μ����� ��ȸ�϶�.
SELECT AVG(E.SALARY),D.DEPARTMENT_NAME FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_NAME 
HAVING COUNT(*)<4 AND DEPARTMENT_NAME IS NOT NULL;

-- 25. IT �μ��� ���� ������ ��ȸ�϶�.
SELECT SUM(E.SALARY) FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_NAME HAVING D.DEPARTMENT_NAME='IT';

-- 26. �����(REGIONS)�� ������ ������ ��ȸ�϶�.
SELECT * FROM COUNTRIES;
SELECT * FROM DEPARTMENTS;
SELECT * FROM LOCATIONS;

SELECT COUNT(*),R.REGION_ID FROM LOCATIONS L
LEFT JOIN COUNTRIES C ON L.COUNTRY_ID = C.COUNTRY_ID
LEFT JOIN REGIONS R ON C.REGION_ID = R.REGION_ID
GROUP BY R.REGION_ID;

-- 27. ���ø� �� �μ��� ������ ��ȸ�϶�.
SELECT L.CITY,COUNT(*) FROM DEPARTMENTS D
LEFT JOIN LOCATIONS L ON D.LOCATION_ID=L.LOCATION_ID
GROUP BY L.CITY;

-- 28. �μ��� �������� �ʴ� ���ø� ��ȸ�϶�.
SELECT L.CITY,D.LOCATION_ID FROM LOCATIONS L
LEFT JOIN DEPARTMENTS D ON L.LOCATION_ID=D.LOCATION_ID
WHERE D.LOCATION_ID IS NULL;

-- 29. ����� �������� �ʴ� ������ ��ȸ�϶�.
SELECT C.COUNTRY_ID, E.EMPLOYEE_ID FROM COUNTRIES C
LEFT JOIN LOCATIONS L ON C.COUNTRY_ID=L.COUNTRY_ID
LEFT JOIN DEPARTMENTS D ON L.LOCATION_ID=D.LOCATION_ID
LEFT JOIN EMPLOYEES E ON D.DEPARTMENT_ID=E.DEPARTMENT_ID
WHERE E.EMPLOYEE_ID IS NULL;

-- 30. 150�� ������� ���� �Ի��� ��� �� ���� �ֽſ� �Ի��� ����� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE HIRE_DATE=(
SELECT MAX(HIRE_DATE) FROM EMPLOYEES WHERE HIRE_DATE<(
SELECT HIRE_DATE FROM EMPLOYEES WHERE EMPLOYEE_ID=150));

-- 31. ������ ��ȯ�� �̷��� �ִ� ����� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID IN(SELECT EMPLOYEE_ID FROM JOB_HISTORY);

-- 32. �μ��� �޴������� �ִ� ����� ��� ������ �μ����� ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID IN(SELECT MANAGER_ID FROM DEPARTMENTS);

-- 33. �ٸ� ����� ����� ����� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID IN(SELECT DISTINCT MANAGER_ID FROM EMPLOYEES);

-- 34. �̸�(FIRST_NAME)�� C�� �����ϰ� s�� ������ 
--    ����� �μ���, ������, ���ø�, ������, ������� ��ȸ�϶�.
SELECT E.FIRST_NAME,D.DEPARTMENT_NAME, J.JOB_TITLE, L.CITY, C.COUNTRY_NAME, R.REGION_NAME FROM EMPLOYEES E
LEFT JOIN JOBS J ON E.JOB_ID=J.JOB_ID
LEFT JOIN DEPARTMENTS D ON D.DEPARTMENT_ID=E.DEPARTMENT_ID
LEFT JOIN LOCATIONS L ON D.LOCATION_ID = L.LOCATION_ID
LEFT JOIN COUNTRIES C ON L.COUNTRY_ID = C.COUNTRY_ID
LEFT JOIN REGIONS R ON C.REGION_ID=R.REGION_ID
WHERE SUBSTR(E.FIRST_NAME,1,1)='C' AND SUBSTR(E.FIRST_NAME,-1)='s';

-- 35. ������ ��ȯ�� �̷��� ���� ����� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID NOT IN(SELECT EMPLOYEE_ID FROM JOB_HISTORY);

-- 36. �ڽ��� ��簡 �ڽ� ���� �ʰ� �Ի��� ����� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES E1 WHERE E1.HIRE_DATE<(SELECT HIRE_DATE FROM EMPLOYEES WHERE EMPLOYEE_ID=E1.MANAGER_ID);

-- 37. 100�� ����� ���� ���� �ΰ� �ִ� ������� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IN(SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=100);
SELECT COUNT(*) FROM EMPLOYEES WHERE MANAGER_ID=100;

-- 38. 100�� ����� ���� �ΰ� �ִ� ��� ������� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE MANAGER_ID=100 OR 
MANAGER_ID IN(SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE MANAGER_ID=100) OR 
MANAGER_ID IN(SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE MANAGER_ID IN(
SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE MANAGER_ID=100));

SELECT * FROM EMPLOYEES WHERE MANAGER_ID=100;

SELECT * FROM EMPLOYEES 
START WITH MANAGER_ID=100
CONNECT BY MANAGER_ID=PRIOR EMPLOYEE_ID;

-- 38-1. 112�� ����� ������ ��� ��ȸ�ض�
SELECT * FROM EMPLOYEES 
START WITH EMPLOYEE_ID=112
CONNECT BY PRIOR MANAGER_ID=EMPLOYEE_ID;

-- 38-2. 150�� ����� ��� ������ �̸��� �μ����� ��ȸ�϶�
SELECT E.FIRST_NAME,E.LAST_NAME,D.DEPARTMENT_NAME FROM EMPLOYEES E LEFT JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
START WITH E.EMPLOYEE_ID=150
CONNECT BY PRIOR E.MANAGER_ID=E.EMPLOYEE_ID;

-- 39. ������� ���� ���� ������ �̸��� ��ȸ�϶�.
SELECT A.CIT, A.COUNTT FROM 
(SELECT COUNT(*) COUNTT, L.CITY CIT FROM EMPLOYEES E 
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
JOIN LOCATIONS L ON D.LOCATION_ID=L.LOCATION_ID 
GROUP BY L.CITY 
ORDER BY COUNT(*) DESC) A
WHERE ROWNUM=1;

-- 40. ������ ������ ���� ���� �μ��� �̸��� ��ȸ�϶�.
SELECT A.CNT,A.DNAME FROM 
(SELECT DISTINCT COUNT(*) CNT, DEPARTMENT_NAME DNAME FROM EMPLOYEES E
LEFT JOIN JOBS J ON E.JOB_ID=J.JOB_ID
LEFT JOIN DEPARTMENTS D ON D.DEPARTMENT_ID=E.DEPARTMENT_ID 
GROUP BY DEPARTMENT_NAME 
ORDER BY COUNT(*) DESC) A 
WHERE ROWNUM=1;

-- 41. ��� ������ �ִ� ������ �ް� �ִ� ������� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES E LEFT JOIN (
SELECT JOB_ID JOB, MAX(SALARY) SALMAX 
FROM EMPLOYEES GROUP BY JOB_ID
) J 
ON E.JOB_ID=J.JOB 
WHERE E.SALARY=J.SALMAX
ORDER BY E.SALARY;

-- 42. ��� ������ �ּ� ������ �ް� �ִ� ������� ��� ������ ��ȸ�϶�.
SELECT * FROM EMPLOYEES E LEFT JOIN (
SELECT JOB_ID JOB, MIN(SALARY) SALMIN 
FROM EMPLOYEES GROUP BY JOB_ID
) J 
ON E.JOB_ID=J.JOB 
WHERE E.SALARY=J.SALMIN;

-- 43. �μ��� ������ �ִ뿬��, �ּҿ���, ������� ��ȸ�϶�.
SELECT EMPLOYEE_ID, JOB_ID , MAX(SALARY) OVER(PARTITION BY JOB_ID) JOBMAX
, MIN(SALARY) OVER(PARTITION BY JOB_ID) JOBMIN 
, COUNT(EMPLOYEE_ID) OVER(PARTITION BY JOB_ID) JOBCOUNT
, DEPARTMENT_ID, MAX(SALARY) OVER(PARTITION BY DEPARTMENT_ID) DEPMAX
, MIN(SALARY) OVER(PARTITION BY DEPARTMENT_ID) DEPMIN
, COUNT(EMPLOYEE_ID) OVER(PARTITION BY DEPARTMENT_ID) DEPCOUNT
FROM EMPLOYEES;

-- 44. ������� ���� ���� ���ÿ��� �ٹ��ϴ� ��� ������� ���� ������ ��ȸ�϶�.
SELECT C.CNT,C.LID,C.SUMSAL FROM (SELECT COUNT(*) CNT, LOCATION_ID LID,SUM(E.SALARY) SUMSAL FROM EMPLOYEES E
JOIN (SELECT DEPARTMENT_ID,LOCATION_ID FROM DEPARTMENTS) D 
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
GROUP BY LOCATION_ID
ORDER BY COUNT(*) DESC) C
WHERE ROWNUM=1;

-- @@@45. ������� ���� ���� ���ÿ��� �ٹ��ϴ� ��� ������� �μ��� �� ������ ��� ������ ��ȸ�϶�.
SELECT DISTINCT E.JOB_ID, AVG(E.SALARY) OVER(PARTITION BY E.JOB_ID) JOBAVG, 
E.DEPARTMENT_ID, TRUNC(AVG(E.SALARY) OVER(PARTITION BY E.DEPARTMENT_ID)) DEPAVG 
FROM EMPLOYEES E 
JOIN (SELECT DEPARTMENT_ID,LOCATION_ID FROM DEPARTMENTS) D 
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID WHERE LOCATION_ID = 

(SELECT C.LID FROM (SELECT COUNT(*) CNT, LOCATION_ID LID FROM EMPLOYEES E
JOIN (SELECT DEPARTMENT_ID,LOCATION_ID FROM DEPARTMENTS) D 
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
GROUP BY LOCATION_ID
ORDER BY COUNT(*) DESC) C
WHERE ROWNUM=1);



--45�� Ǯ�̿� ���� ���� ������ ���̺�
SELECT * FROM EMPLOYEES E 
JOIN (SELECT DEPARTMENT_ID,LOCATION_ID FROM DEPARTMENTS) D 
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID WHERE LOCATION_ID = 
(SELECT C.LID FROM (SELECT COUNT(*) CNT, LOCATION_ID LID FROM EMPLOYEES E
JOIN (SELECT DEPARTMENT_ID,LOCATION_ID FROM DEPARTMENTS) D 
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
GROUP BY LOCATION_ID
ORDER BY COUNT(*) DESC) C
WHERE ROWNUM=1) ORDER BY E.EMPLOYEE_ID;

-- 46. �Ի����� ���� ������ ����� ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE HIRE_DATE=(SELECT MIN(HIRE_DATE) FROM EMPLOYEES);

-- 47. �Ի����� ���� �ֱ��� ����� ��ȸ�϶�.
SELECT * FROM EMPLOYEES WHERE HIRE_DATE=(SELECT MAX(HIRE_DATE) FROM EMPLOYEES);

-- 48. ���� �ֱٿ� �Ի��� ����� ���� �������� �Ի��� ����� ������ ����� ��ȸ�϶�.
SELECT (MAX(HIRE_DATE)-MIN(HIRE_DATE)) FROM EMPLOYEES;
SELECT MAX(HIRE_DATE), MIN(HIRE_DATE) FROM EMPLOYEES;

-- 49. @@@���� �ֱٿ� �Ի��� ����� ���� �������� �Ի��� ����� �ð����� ����� ��ȸ�϶�.

-- 50. ������ 12000 �̻�Ǵ� �������� LAST_NAME �� ������ ��ȸ�Ѵ�.
SELECT LAST_NAME, SALARY FROM EMPLOYEES WHERE SALARY>=12000;

-- 51. �����ȣ�� 176 �� ����� LAST_NAME �� �μ� ��ȣ�� ��ȸ�Ѵ�.
SELECT LAST_NAME, DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=176;

-- 52. ������ 5000 ���� 12000�� ���� �̿��� ������� LAST_NAME �� ������ ��ȸ����.
SELECT LAST_NAME, SALARY FROM EMPLOYEES WHERE SALARY<5000 OR SALARY>12000;

-- 53. 2000/02/20 �Ϻ��� 2010/05/01 ���̿� ���� ������� LAST_NAME ���, ������ڸ� ��ȸ�Ѵ�.
SELECT LAST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE>='2000/02/20' AND HIRE_DATE<='2010/05/01';

-- 54. 20 �� �� 50 �� �μ����� �ٹ��ϴ� ��� ������� LAST_NAME �� 
--   �μ� ��ȣ�� ���ĺ������� ��ȸ�Ѵ�.
SELECT LAST_NAME, DEPARTMENT_ID FROM EMPLOYEES 
WHERE DEPARTMENT_ID=20 OR DEPARTMENT_ID=50
ORDER BY LAST_NAME;

-- 55. 20 �� �� 50 �� �μ��� �ٹ��ϸ�, ������ 5000 ~ 12,000 ������ 
--   ������� LAST_NAME �� ������ ��ȸ�Ѵ�.
SELECT LAST_NAME, SALARY FROM EMPLOYEES 
WHERE (DEPARTMENT_ID=20 OR DEPARTMENT_ID=50)
AND (SALARY>=5000 AND SALARY<=12000);

-- 56. 2005�⵵�� ���� ��� ������� LAST_NAME �� ������� ��ȸ�Ѵ�.
SELECT LAST_NAME, HIRE_DATE FROM EMPLOYEES WHERE EXTRACT(YEAR FROM HIRE_DATE)='2005';

-- 57. �Ŵ����� ���� ������� LAST_NAME �� JOB_ID �� ��ȸ�Ѵ�.
SELECT LAST_NAME, JOB_ID FROM EMPLOYEES WHERE MANAGER_ID IS NULL;

-- 58. �Ŵ����� �ִ� ������� LAST_NAME �� JOB_ID �� ��ȸ�Ѵ�.
SELECT LAST_NAME, JOB_ID FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL;

-- 59. Ŀ�̼��� ���� ��� ������� LAST_ANME, ���� �� Ŀ�̼��� ��ȸ�Ѵ�.
--    ���� ����, Ŀ�̼� �������� �����Ѵ�.
SELECT LAST_NAME, SALARY, COMMISSION_PCT FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
ORDER BY SALARY DESC, COMMISSION_PCT DESC;

-- 60. LAST_NAME �� �׹�° ���ڰ� a �� ������� LAST_NAME �� ��ȸ�Ѵ�.
SELECT LAST_NAME FROM EMPLOYEES WHERE LAST_NAME LIKE '___a%';

-- 61. LAST_NAME �� a ��(OR) e ���ڰ� �ִ� ������� LAST_NAME �� ��ȸ�Ѵ�.
SELECT LAST_NAME FROM EMPLOYEES WHERE LAST_NAME LIKE '%a%' OR LAST_NAME LIKE '%E%';

-- 62. ������ 2,500, 3,500, 7000 �� �ƴϸ� 
-- ������ SA_REP �̳� ST_CLERK �� ������� ��ȸ�Ѵ�.
SELECT * FROM EMPLOYEES WHERE 
(SALARY!=2500 AND SALARY!=3500 AND SALARY!=7000)
AND
(JOB_ID='SA_REP' OR JOB_ID='ST_CLERK');

-- 63.  ������ AD_PRESS �� ����� A �����, 
--  ST_MAN �� ����� B �����, IT_PROG �� ����� C �����,
--  SA_REP �� ����� D �����, ST_CLERK �� ����� E ����� 
--  ��Ÿ�� 0 �� �ο��Ͽ� ��ȸ�Ѵ�.
SELECT JOB_ID, (CASE
WHEN JOB_ID='AD_PRESS' THEN 'A'
WHEN JOB_ID='ST_MAN' THEN 'B'
WHEN JOB_ID='IT_PROG' THEN 'C'
WHEN JOB_ID='SA_REP' THEN 'D'
WHEN JOB_ID='ST_CLERK' THEN 'E'
ELSE '0'
END) LANK FROM EMPLOYEES ORDER BY LANK DESC;

SELECT  DECODE(JOB_ID,'AD_PRESS','A','ST_MAN','B','IT_PROG','C','SA_REP','D','ST_CLERK','E','0') ���, A.*
FROM EMPLOYEES A;


-- 64. ��� ������� LAST_NAME, �μ� �̸� �� �μ� ��ȣ�� ��ȸ�Ѵ�.
SELECT E.LAST_NAME, E.DEPARTMENT_ID, D.DEPARTMENT_NAME FROM EMPLOYEES E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

-- 65. �μ���ȣ 30 ���� ��� �������� ������ �������� ��ȸ�Ѵ�. 90 �μ� ���� �����Ѵ�.
SELECT DISTINCT JOB_ID FROM EMPLOYEES WHERE DEPARTMENT_ID IN(30,90);

-- 66. Ŀ�̼��� ���� ��� ������� LAST_NAME, �μ� ��, ���� ID �� ���� ���� ��ȸ�Ѵ�.
SELECT E.LAST_NAME, D.DEPARTMENT_NAME, D.LOCATION_ID, L.CITY FROM EMPLOYEES E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
JOIN LOCATIONS L ON D.LOCATION_ID=L.LOCATION_ID 
WHERE E.COMMISSION_PCT IS NOT NULL;

-- 66-1. �þ�Ʋ�� ��� ��� �� Ŀ�̼��� ���� ��� ������� LAST_NAME, �μ� ��, ���� ID �� ���� ���� ��ȸ�Ѵ�. Seattle
SELECT E.LAST_NAME, D.DEPARTMENT_NAME, D.LOCATION_ID, L.CITY FROM EMPLOYEES E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
JOIN LOCATIONS L ON D.LOCATION_ID=L.LOCATION_ID 
WHERE E.COMMISSION_PCT IS NOT NULL AND L.CITY='Seattle';

-- 67. LAST_NAME �� DAVIES �� ������� �Ŀ� ���� ������� LAST_NAME �� HIRE_DATE �� ��ȸ�Ѵ�.
SELECT LAST_NAME, HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE>(
SELECT HIRE_DATE FROM EMPLOYEES WHERE LAST_NAME='Davies');

-- 68. �ڽ��� �Ŵ������� ���� ���� ������� LAST_NAME �� ������� ��ȸ�Ѵ�.
SELECT E1.LAST_NAME, E1.HIRE_DATE FROM EMPLOYEES E1 
JOIN EMPLOYEES E2 ON E1.MANAGER_ID=E2.EMPLOYEE_ID
WHERE E1.HIRE_DATE<E2.HIRE_DATE;

-- 69. ȸ�� ��ü�� �ִ� ����, �ּ� ����, ���� �� �� �� ��� ������ �ڿ����� �����Ͽ� ��ȸ�Ѵ�.
SELECT MAX(SALARY), MIN(SALARY), SUM(SALARY), TRUNC (AVG(SALARY)) FROM EMPLOYEES;

-- 70. �� JOB_ID ��, �ִ� ����, �ּ� ����, ���� �� �� �� ��� ������ �ڿ����� �����Ͽ� ��ȸ�Ѵ�.
SELECT JOB_ID, MAX(SALARY), MIN(SALARY), SUM(SALARY), TRUNC (AVG(SALARY)) FROM EMPLOYEES
GROUP BY JOB_ID;

-- 71. ������ ������ ���� ������� �� ���� ��ȸ�Ѵ�.
SELECT JOB_ID, COUNT(*) FROM EMPLOYEES GROUP BY JOB_ID;

-- 72. �Ŵ����� �ٹ��ϴ� ������� �� ���� ��ȸ�Ѵ�.
SELECT COUNT(*) FROM EMPLOYEES E 
JOIN (SELECT JOB_ID,JOB_TITLE FROM JOBS) J 
USING(JOB_ID)
WHERE J.JOB_TITLE LIKE '%Manager%';

SELECT COUNT(*) FROM EMPLOYEES E1
JOIN DEPARTMENTS E2 USING(DEPARTMENT_ID)
WHERE E1.EMPLOYEE_ID=E2.MANAGER_ID;


-- 73. �系�� �ִ� ���� �� �ּ� ������ ���̸� ��ȸ�Ѵ�.
SELECT MAX(SALARY)-MIN(SALARY) FROM EMPLOYEES;

-- 74. �Ŵ����� ��� �� �� �Ŵ��� �� ����� �� �ּ� ������ �޴� ����� ������ ��ȸ�Ѵ�.
--     �Ŵ����� ���� ������� �����Ѵ�.
--     �ּ� ������ 6000 �̸��� ���� �����Ѵ�.
--     ���� ���� �������� ��ȸ�Ѵ�.
SELECT * FROM 
(SELECT DISTINCT MANAGER_ID,MIN(SALARY) EMIN 
FROM EMPLOYEES GROUP BY MANAGER_ID 
HAVING MANAGER_ID IS NOT NULL)
WHERE EMIN>6000 ORDER BY EMIN DESC;

-- 75. �μ� ��, ��ġ ID, �� �μ� �� ��� �� ��, �� �μ� �� ��� ������ ��ȸ�Ѵ�.
--     ��� ������ �Ҽ��� 2 �ڸ������� ǥ���Ѵ�.
SELECT D.DEPARTMENT_NAME �μ���, D.LOCATION_ID ��ġID, COUNT(E.EMPLOYEE_ID) ����Ѽ�, TRUNC(AVG(E.SALARY),2) ��տ��� FROM EMPLOYEES E
JOIN DEPARTMENTS D USING(DEPARTMENT_ID)
GROUP BY D.DEPARTMENT_NAME,D.LOCATION_ID;

SELECT * FROM JOB_HISTORY;
SELECT * FROM EMPLOYEES;

-- @@@@76. �� ��� �� �� 1995, 1996, 1997, 1998 �⵵ �� ���� ������� �� ���� ������ ���� ��ȸ�Ѵ�.
-- ���� �� 1��
SELECT COUNT(*) OVER(PARTITION BY EXTRACT(YEAR FROM START_DATE)),
(SELECT COUNT(*) FROM EMPLOYEES) FROM JOB_HISTORY 
WHERE EXTRACT(YEAR FROM START_DATE)IN ('1995','1996','1997','1998');
--���� �� 2 ��
SELECT COUNT(*) OVER(PARTITION BY EXTRACT(YEAR FROM HIRE_DATE)),
(SELECT COUNT(*) FROM EMPLOYEES) FROM EMPLOYEES 
WHERE EXTRACT(YEAR FROM HIRE_DATE)IN ('1995','1996','1997','1998');

-- 77.  �� �μ��� �� ���� �� ���� �� �� �� �� �μ��� ���� �� ���� ��ȸ�Ѵ�. 
SELECT DISTINCT JOB_ID
, SUM(SALARY) OVER(PARTITION BY JOB_ID) JOBSUM
, DEPARTMENT_ID
, SUM(SALARY) OVER(PARTITION BY DEPARTMENT_ID) DEPSUM
FROM EMPLOYEES;

-- 78. LAST_NAME �� Zlotkey �� ������ �μ��� �ٹ��ϴ� ��� ������� ��� �� ��볯¥�� ��ȸ�Ѵ�.
--     ��������� Zlotkey �� �����Ѵ�.
SELECT EMPLOYEE_ID, HIRE_DATE FROM EMPLOYEES 
WHERE DEPARTMENT_ID=(SELECT DEPARTMENT_ID FROM employees WHERE LAST_NAME='Zlotkey')
AND LAST_NAME!='Zlotkey';

-- 79. ȸ�� ��ü ��� �������� �� �޴� ������� ��� �� LAST_NAME �� ��ȸ�Ѵ�.
SELECT EMPLOYEE_ID, LAST_NAME FROM EMPLOYEES 
WHERE SALARY>(SELECT AVG(SALARY) FROM EMPLOYEES);

-- 80. LAST_NAME �� u �� ���ԵǴ� ������ ���� �μ��� �ٹ��ϴ� ������� ��� �� LAST_NAME �� ��ȸ�Ѵ�.
SELECT EMPLOYEE_ID, LAST_NAME FROM EMPLOYEES 
WHERE DEPARTMENT_ID 
IN(SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE LAST_NAME LIKE '%u%');

-- 81. (VIEW �̿�) LAST_NAME �� u �� ���ԵǴ� ������ ���� �μ��� �ٹ��ϴ� ������� ��� �� LAST_NAME �� ��ȸ�Ѵ�.
CREATE OR REPLACE VIEW UIN
AS SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE LAST_NAME LIKE '%u%';

SELECT EMPLOYEE_ID, LAST_NAME FROM EMPLOYEES 
WHERE DEPARTMENT_ID IN(UIN);

-- 82. ��ġ ID �� 1700 �� �μ����� �ٹ��ϴ� ������� LAST_NAME, �μ� ��ȣ �� JOB_ID �� ��ȸ�Ѵ�.

-- 83. (VIEW �̿�)��ġ ID �� 1700 �� �μ����� �ٹ��ϴ� ������� LAST_NAME, �μ� ��ȣ �� JOB_ID �� ��ȸ�Ѵ�.

-- 84. King �� �Ŵ����� �ΰ� �ִ� ��� ������� LAST_NAME �� ������ ��ȸ�Ѵ�.

-- 85. EXECUTIVE �μ��� �ٹ��ϴ� ��� ������� �μ� ��ȣ, LAST_NAME, JOB_ID �� ��ȸ�Ѵ�.

-- 86. ȸ�� ��ü ��� ���� ���� �� ���� ����� �� LAST_NAME �� u �� �ִ� �������
--       �ٹ��ϴ� �μ����� �ٹ��ϴ� ������� ���, LAST_NAME �� ������ ��ȸ�Ѵ�.

-- 87. (VIEW �̿�)ȸ�� ��ü ��� ���� ���� �� ���� ����� �� LAST_NAME �� u �� �ִ� �������
--       �ٹ��ϴ� �μ����� �ٹ��ϴ� ������� ���, LAST_NAME �� ������ ��ȸ�Ѵ�.

-- 88. ST_CLERK �� ���� ID �� ���� ����� ���� �μ� ID �� ��ȸ�Ѵ�.
--       NULL ���� �����Ѵ�. (NOT EXISTS ���)

-- 89. ST_CLERK �� ���� ID �� ���� ����� �ִ� �μ� ID �� ��ȸ�Ѵ�.
--       NULL ���� �����Ѵ�. (NOT EXISTS ���)

-- 90. ��ġ�� �μ��� ���� ���� ID �� ���� �̸��� ��ȸ����.(NOT EXISTS ���)

-- 91. ��ġ�� �μ��� �ִ� ���� ID �� ���� �̸��� ��ȸ����.(EXISTS ���)

-- 92. ������ ������ ������ ������ �ִ� ������� ��� �� JOB_ID �� ��ȸ�Ѵ�.

-- 93. Ŀ�̼��� ���� ������� �μ��� ������ ������ ������� LAST_NAME, �μ� ��ȣ �� ������ ��ȸ�Ѵ�.

-- 94. ��ġ ID �� 1700 �� ������� ������ Ŀ�̼��� ������ ������� LAST_NAME, �μ� ��ȣ �� ������ ��ȸ�Ѵ�.

-- 95. LAST_NAME �� 'Kochhar' �� ����� ������ ���� �� Ŀ�̼��� ���� ������� LAST_NAME, �μ� ��ȣ �� ������ ��ȸ�Ѵ�.

-- 96. ���� ID �� SA_MAN �� ������� ���� �� �ִ� �ִ� ���� ���� ���� �޴� ������� LAST_NAME, JOB_ID �� ������ ��ȸ�Ѵ�.

-- 97. ���� �̸��� T �� �����ϴ� ������ ��� ������� ���, LAST_NAME �� �μ� ��ȣ�� ��ȸ�Ѵ�.

-- 98.  �� �μ��� ��� �������� �� �޴� ���Ϻμ� �ٹ��������
--      LAST_NAME, ����, �μ���ȣ �� �ش� �μ��� ��� ������ ��ȸ�Ѵ�.
--      ����� �μ��� ������ �������� �����Ѵ�.

-- 99. �ҼӺμ��� ��� �������� ���� ���� ������� last_name �� ��ȸ�Ѵ�.

-- 100. �� ��� �� �ҼӺμ����� �ڽź��� �ʰ� ���Ǿ����� ���� ���� ������ �޴� ����� �����ϴ� ��� ������� last_name �� ��ȸ�Ѵ�.

--101. ��å(Job Title)�� Sales Manager�� ������� �Ի�⵵�� �Ի�⵵(hire_date)�� ��� �޿��� ����Ͻÿ�. 
--   ��� �� �⵵�� �������� �������� �����Ͻÿ�. 

--102. �� ����(city)�� �ִ� ��� �μ� �������� ��ձ޿��� ��ȸ�ϰ��� �Ѵ�. 
--   ��ձ޿��� ���� ���� ���ú��� ���ø�(city)�� ��տ���, �ش� ������ �������� ����Ͻÿ�. 
--   ��, ���ÿ� �� ���ϴ� ������ 10�� �̻��� ���� �����ϰ� ��ȸ�Ͻÿ�.

--103. ��Public  Accountant���� ��å(job_title)���� ���ſ� �ٹ��� ���� �ִ� ��� ����� ����� �̸��� ����Ͻÿ�. 
--   (���� ��Public Accountant���� ��å(job_title)���� �ٹ��ϴ� ����� ��� ���� �ʴ´�.)      
--   �̸��� first_name, last_name�� �Ʒ��� �������� ���� ����Ѵ�.

--104. �ڽ��� �Ŵ������� ����(salary)�� ���� �޴� �������� ��(last_name)�� ����(salary)�� �� ���Ͻÿ�. 

--105. 2007�⿡ �Ի�(hire_date)�� �������� ���(employee_id), �̸�(first_name), ��(last_name), 
--   �μ���(department_name)�� ��ȸ�մϴ�.  
--   �̶�, �μ��� ��ġ���� ���� ������ ���, ��<Not Assigned>���� ����Ͻÿ�. 

--106. ������(job_title)�� ��Sales Representative���� ���� �߿��� ����(salary)�� 9,000�̻�, 10,000 ������ 
--   �������� �̸�(first_name), ��(last_name)�� ����(salary)�� ����Ͻÿ�

--107. �μ����� ���� ���� �޿��� �ް� �ִ� ������ �̸�, �μ��̸�, �޿��� ����Ͻÿ�. 
--   �̸��� last_name�� ����ϸ�, �μ��̸����� �������� �����ϰ�, 
--   �μ��� ���� ��� �̸��� ���� ���� �������� �����Ͽ� ����մϴ�. 

--108. EMPLOYEES ���̺��� �޿��� ���� �޴� ������� ��ȸ���� �� ���ó�� 6��°���� 10 ��°���� 
--   5���� last_name, first_name, salary�� ��ȸ�ϴ� sql������ �ۼ��Ͻÿ�.

--109. ����� �μ��� ���� ����(city)�� ��Seattle���� ����� �̸�, �ش� ����� �Ŵ��� �̸�, ��� �� �μ��̸��� ����Ͻÿ�. 
--   �̶� ����� �Ŵ����� ���� ��� ��<����>���̶�� ����Ͻÿ�. �̸��� last_name�� ����ϸ�, 
--   ����� �̸��� ������������ �����Ͻÿ�. 

--110. �� ����(job) ���� ����(salary)�� ������ ���ϰ��� �Ѵ�. ���� ������ ���� ���� �������� 
--    ������(job_title)�� ���� ������ ��ȸ�Ͻÿ�. �� ���������� 30,000���� ū ������ ����Ͻÿ�. 

--111. �� ���(employee)�� ���ؼ� ���(employee_id), �̸�(first_name), ������(job_title), 
--    �μ� ��(department_name)�� ��ȸ�Ͻÿ�. 
--    �� ���ø�(city)�� ��Seattle���� ����(location)�� �μ� (department)�� �ٹ��ϴ� ������ �����ȣ �������������� ����Ͻÿ�.

--112. 2001~20003����̿� �Ի��� ������ �̸�(first_name), �Ի���(hire_date), �����ڻ�� (employee_id), 
--    ������ �̸�(fist_name)�� ��ȸ�մϴ�. ��, �����ڰ� ���� ��������� ��� ����� ���Խ��� ����Ѵ�.

--113. ��Sales�� �μ��� ���� ������ �̸�(first_name), �޿�(salary), �μ��̸�(department_name)�� ��ȸ�Ͻÿ�. 
--    ��, �޿��� 100�� �μ��� ��պ��� ���� �޴� ���� ������ ��µǾ�� �Ѵ�. 

--114. Employees ���̺��� �Ի��Ѵ�(hire_date)���� �ο����� ��ȸ�Ͻÿ�.

--115. �μ��� �������� �ִ�, �ּ�, ��ձ޿��� ��ȸ�ϵ�, 
--    ��ձ޿��� ��IT�� �μ��� ��ձ޿����� ����, ��Sales�� �μ��� ��պ��� ���� �μ� ������ ����Ͻÿ�. 

--116. �� �μ����� ������ �Ѹ� �ִ� �μ��� ��ȸ�Ͻÿ�. 
--    ��, ������ ���� �μ��� ���ؼ��� ��<�Ż��μ�>����� ���ڿ��� ��µǵ��� �ϰ�,
--    ��°���� ������ ���� �μ����� �������� ���� ���ĵǾ���Ѵ�. 

--117. �μ��� �Ի���� �������� ����Ͻÿ�. 
--    ��, �������� 5�� �̻��� �μ��� ��µǾ�� �ϸ� ��°���� �μ��̸� ������ �Ѵ�.

--118. ����(country_name) �� ����(city)�� �������� ��ȸ�Ͻÿ�. 
--    ��, �μ��� �������� ���� ���� �� �ֱ� ������ 106���� ������ ����� �ȴ�. 
--    �μ������� ���� ������ ������� ���ø� ��ſ� ��<�μ�����>���� ��µǵ��� �Ͽ� 107�� ��� ��µǰ� �Ѵ�.

--119. �� �μ��� �ִ� �޿����� ���̵�(employee_id), �̸�(first_name), �޿�(salary)�� ����Ͻÿ�. 
--    ��, �ִ� �޿��ڰ� ���� �μ��� ��ձ޿��� ���������� ����Ͽ� ��ձ޿��� ���� �� �ְ� �� ��.

--120. Ŀ�̼�(commission_pct)�� �������� ��ȸ�Ͻÿ�. 
--    Ŀ�̼��� �Ʒ�������ó�� 0.2, 0.25�� ��� .2��, 0.3, 0.35�� .3 ���·� ��µǾ�� �Ѵ�. 
--    ��, Ŀ�̼� ������ ���� �����鵵 �ִ� �� Ŀ�̼��� ���� ���� �׷��� ��<Ŀ�̼� ����>���� ��µǰ� �Ѵ�.

--121. Ŀ�̼�(commission_pct)�� ���� ���� ���� ���� 4���� �μ���(department_name), 
--    ������ (first_name), �޿�(salary), Ŀ�̼�(commission_pct) ������ ��ȸ�Ͻÿ�. 
--    ��°���� Ŀ�̼� �� ���� �޴� ������ ����ϵ� ������ Ŀ�̼ǿ� ���ؼ��� �޿��� ���� ������ ���� ��� �ǰ� �Ѵ�.

--Q1 �μ���, ������(first_name),�޿�,Ŀ�̼� �÷��� ���� �並 �ۼ��Ͻÿ�.
--�� Ŀ�̼� ����Ʈ�� ���� ��� 0���� ��ȯ

--Q2 �μ���, ��å, ������, �Ի����� ���� �並 �ۼ��Ͻÿ�.

--Q3 �μ����̺��� �����Ͽ� �� ���̺��� ����� �� ���̺� ������ �÷��� �߰��ϰ� �ʱⰪ�� ������ �� 
--������ �Ի� �� ���� ������ �÷��� �����ϴ� Ʈ���Ÿ� �ۼ��Ͻÿ�

--Q4 �μ�ID�� �Է��ϸ� �μ����� ��ȯ�ϴ� �Լ��� �ۼ��Ͻÿ�.

--Q5 �μ�ID�� �Է��ϸ� �ش� �μ��� ���� ����� ����ϴ� ���ν����� �ۼ��Ͻÿ�.
