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



-- 20. ��� ������� �����ȣ, �μ���, �������� ��ȸ�϶�.
