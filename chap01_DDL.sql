
-- ���̺� ����(DDL : ������ ���Ǿ�)
-- �л��� ���������� ����
CREATE TABLE TBL_SCORE(
    STU_ID NUMBER(6) PRIMARY KEY,
    STU_NAME VARCHAR2(20) NOT NULL,
    KOR NUMBER(3) NOT NULL CHECK(KOR >= 10 AND KOR <= 100),
    ENG NUMBER(3) NOT NULL CHECK(ENG >= 10 AND ENG <= 100),
    MATH NUMBER(3) NOT NULL CHECK(MATH >= 10 AND MATH <= 100),
    TOTAL NUMBER(3),
    AVERAGE NUMBER(5,2),
    GRADE CHAR(1)
);

--ALTER ������ �������� �߰��غ���
--AVERAGE�� unique������ �ɰ�ʹ�.
ALTER TABLE TBL_SCORE
ADD CONSTRAINT unique_average
UNIQUE (average);

--unique�� �����ϰ� ����
ALTER TABLE TBL_SCORE
DROP CONSTRAINT unique_average;

--�÷� �߰��ϱ�
ALTER TABLE TBL_SCORE
ADD (
    scient NUMBER(3) NOT NULL
);

--�÷� ����
ALTER TABLE TBL_SCORE
DROP COLUMN scient;

INSERT INTO TBL_SCORE
   (STU_ID, STU_NAME, KOR, ENG, MATH)
VALUES
    (2, '������',70, 100, 98);

SELECT * FROM TBL_SCORE;

-- TRUNCATE TABLE -���̺� ���� ������ ��ü����
TRUNCATE TABLE TBL_SCORE;

-- DROP TABLE: ���̺��� ����
DROP TABLE TBL_SCORE;