-- ORDER BY : ����
-- ASC : ������ ���� (�⺻��), DESC : ������ ����
-- �׻� SELECT���� �� �������� ��ġ

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
    emp_no AS ���
    , emp_nm �̸�
    , addr �μ��ڵ�
FROM tb_emp
-- ��Ī���� �̸� ���� ����
ORDER BY �̸� DESC 
;


SELECT 
    emp_no AS ���
    , emp_nm �̸�
    , addr �μ��ڵ�
FROM tb_emp
-- �� ��ȣ�� �̸� ���� ����
ORDER BY 3, 1 DESC --�μ��ڵ�� �������� �ϰ� ������� �������� �ض�
;

-- ����Ŭ������ ���Ľ� null�� ���� ū ������ ���
SELECT 
    emp_nm
    , direct_manager_emp_no
FROM tb_emp
ORDER BY direct_manager_emp_no DESC
;


SELECT 
    emp_no
    , SUM(pay_amt) ����
FROM tb_sal_his
WHERE pay_de BETWEEN '20190101' AND '20191231'
GROUP BY emp_no
HAVING AVG(pay_amt) >= 4500000
ORDER BY 2 DESC
;







