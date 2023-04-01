


DROP TABLE TB_DEPT;
CREATE TABLE TB_DEPT
( 
   DEPT_CD     VARCHAR2(8) NOT NULL PRIMARY KEY,
   PAR_DEPT_CD VARCHAR2(8),
   DEPT_NM     VARCHAR2(50)
);
SELECT * FROM TB_DEPT;

SELECT 
    LEVEL LEV,
    DEPT_CD,
    DEPT_NM,
    PAR_DEPT_CD
FROM TB_DEPT
START WITH PAR_DEPT_CD IS NULL -- 시작 위치를 정함
CONNECT BY PAR_DEPT_CD = PRIOR DEPT_CD -- 자식데이터를 지정
ORDER BY LEV; 















