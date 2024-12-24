CREATE TABLE goods(
    id NUMBER(6) PRIMARY KEY,
    goods_name VARCHAR2(50) NOT NULL,
    price NUMBER(10) DEFAULT 1000,
    created_at DATE
);


-- ������ ����
INSERT INTO GOODS(ID,goods_name,created_at)
VALUES(3,'�ް�',SYSDATE);

-- ������ ����
INSERT INTO GOODS(ID,goods_name,price,created_at)
VALUES(2,'��Ź��',2000000,SYSDATE);

-- NOT NULL ���� �������� ���� �Ұ��� 
INSERT INTO GOODS(IDprice,created_at)
VALUES(2,2000000,SYSDATE);

INSERT INTO GOODS(ID,goods_name)
VALUES(5,'���');

-- ���� ���� �޶� ���� ����
INSERT INTO GOODS(goods_name,ID)
VALUES('���',6);

-- VALUES �տ� �÷����� �����ϸ�
-- ���̺� ������ ������ �÷��������
-- ���� ������ �־����
INSERT INTO GOODS
VALUES
( 7, '������', 30000, SYSDATE);

-- ������ ���� :UPDATE
UPDATE GOODS
SET goods_name = '������'
WHERE id = 1;

UPDATE GOODS
SET goods_name = '¥���'
    ,price = 8000
WHERE id = 3;

--SAVE 
COMMIT;

-- WHERE �������� ���� UPDATE
UPDATE GOODS
SET price = 9999;

-- ID�� �����ϸ� �ٲٸ� �ȵ�

UPDATE GOODS
SET id = 11
where id  = 2;

UPDATE GOODS
SET price = null
WHERE id = 6;

-- NOT NULL ���������� null�� ���� �Ұ�
UPDATE GOODS
SET goods_name = null
WHERE id = 6;
--������ ����: DELETE
DELETE FROM GOODS
WHERE id = 1;
--WHERE���� ���� DELETE�� ��ü���� ȿ���� ���Ѵ�.
-- �׷��� �̰��� ������ ����, TRUNCATE TABLE�� ���� �Ұ���
DELETE FROM GOODS;
ROLLBACK;

TRUNCATE TABLE GOODS;

-- ������ ��ȸ
SELECT * FROM GOODS;

-- �ߺ� ����
SELECT DISTINCT
    issue_insti_nm
FROM TB_CERTI
;


-- ��� �÷� ��ȸ
SELECT 
    certi_cd
    
FROM TB_CERTI
;
--��Ī�� ���Ⱑ ���� ��� ����ǥ ���� �Ұ���

SELECT 
    emp_nm �����
    , addr �ּ�

FROM TB_EMP
;

// ���ڿ� ����
SELECT 
    certi_nm || '(' || issue_insti_nm || ')' AS certi_detail
FROM TB_CERTI
;