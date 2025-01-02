-- ORDER BY : 정렬
-- ASC : 오름차 정렬 (기본값), DESC : 내림차 정렬
-- 항상 SELECT절의 맨 마지막에 위치

SELECT 
    emp_no
    , emp_nm
    , addr
FROM tb_emp
ORDER BY emp_no
;

SELECT 
    emp_no
    , emp_nm
    , addr
FROM tb_emp
ORDER BY emp_nm
;

SELECT 
    emp_no AS 사번
    , emp_nm 이름
    , addr 부서코드
FROM tb_emp
-- 별칭으로 이름 정렬 가능
ORDER BY 이름 DESC 
;


SELECT 
    emp_no AS 사번
    , emp_nm 이름
    , addr 부서코드
FROM tb_emp
-- 열 번호로 이름 정렬 가능
ORDER BY 3, 1 DESC --부서코드로 오름차순 하고 사번으로 내림차순 해라
;

-- 오라클에서는 정렬시 null을 가장 큰 값으로 취급
SELECT 
    emp_nm
    , direct_manager_emp_no
FROM tb_emp
ORDER BY direct_manager_emp_no DESC
;


SELECT 
    emp_no
    , SUM(pay_amt) 연봉
FROM tb_sal_his
WHERE pay_de BETWEEN '20190101' AND '20191231'
GROUP BY emp_no
HAVING AVG(pay_amt) >= 4500000
ORDER BY 2 DESC
;







