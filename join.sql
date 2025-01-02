SELECT 
    emp_no
    ,emp_nm
    ,dept_cd
FROM tb_emp
;

SELECT 
    *
FROM tb_dept
;


-- ���� ���� �׽�Ʈ ������
CREATE TABLE TEST_A (
    id NUMBER(10) PRIMARY KEY
    , content VARCHAR2(200)
);
CREATE TABLE TEST_B (
    b_id NUMBER(10) PRIMARY KEY
    , reply VARCHAR2(100)
    , a_id NUMBER(10)
);


INSERT INTO TEST_A  VALUES (1, 'aaa');
INSERT INTO TEST_A  VALUES (2, 'bbb');
INSERT INTO TEST_A  VALUES (3, 'ccc');

INSERT INTO TEST_B  VALUES (1, '������', 1);
INSERT INTO TEST_B  VALUES (2, '������', 1);
INSERT INTO TEST_B  VALUES (3, '������', 2);
INSERT INTO TEST_B  VALUES (4, '������', 3);

SELECT * FROM test_a;
SELECT * FROM test_b;

-- ������ �⺻ ��ʸ��� ������ (��ø�ݺ�������)
-- ī�׽þ� ��(Cartesian production)
-- ������ ��� ����� ���� ��Ī�Ͽ� ��ȸ

SELECT *
FROM test_a, test_b
;

SELECT *
FROM test_a, test_b
WHERE test_a.id = test_b.a_id
;
SELECT 
    tb_emp.emp_no
    , tb_emp.emp_nm
    , tb_emp.dept_cd
    , tb_dept.dept_cd
    , tb_dept.dept_nm
FROM tb_emp, tb_dept
;


--����� �����ȣ�� ������ ����� �ڰ������� ��ȸ



SELECT 
    EC.emp_no
    ,EC.certi_cd
    ,EC.acqu_de
FROM tb_emp_certi EC
;

SELECT 
    *
    FROM tb_certi C
    ;

SELECT
    E.emp_no
    , E.emp_nm
    ,EC.acqu_de
    ,EC.certi_cd
FROM tb_emp E, tb_emp_certi EC
;

SELECT 
    E.emp_no
    , E.emp_nm
    , EC.acqu_de
    , EC.certi_cd
    , C.certi_nm
FROM tb_emp E, tb_emp_certi EC, tb_certi C
WHERE E.emp_no = EC.emp_no
      AND EC.certi_cd = C.certi_cd
;


