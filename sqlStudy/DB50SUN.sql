-- 1. 모든 사원의 이름(FIRST_NAME, LAST_NAME)을 조회하라.
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES;

-- 2. 모든 사원의 모든 정보를 조회하라.
SELECT * FROM EMPLOYEES;

-- 3. 모든 도시 명을 조회하라.
SELECT CITY FROM LOCATIONS;

-- 4. 이름(FIRST_NAME)이 M 으로 시작하는 사원의 모든 정보를 조회하라.
SELECT * FROM EMPLOYEES WHERE INSTR(FIRST_NAME,'M')!=0;

-- 5. 이름(FIRST_NAME)의 두 번째 글자가 'a'인 사원의 이름(FIRST_NAME)과 연봉을 조회하라.
SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE INSTR(FIRST_NAME,'a')=2;

-- 6. 도시 명을 오름차순 정렬하라.
SELECT CITY FROM LOCATIONS ORDER BY CITY;

-- 7. 부서 명을 내림차순 정렬하라.
SELECT DEPARTMENT_NAME FROM DEPARTMENTS ORDER BY DEPARTMENT_NAME DESC;

-- 8. 연봉이 7000 이상인 사원들의 모든 정보를 연봉순(오름차순)으로 정렬하라.
SELECT * FROM EMPLOYEES WHERE SALARY>=7000 ORDER BY SALARY;

-- 9. 인센티브(COMMISSION_PCT)를 받지 않는 사원들의 모든 정보를 조회하라.
SELECT * FROM EMPLOYEES WHERE COMMISSION_PCT IS NULL;

-- 10. 인센티브(COMMISSION_PCT)를 받는 사원들의 모든 정보를 조회하라.
SELECT * FROM EMPLOYEES WHERE COMMISSION_PCT IS NOT NULL;


