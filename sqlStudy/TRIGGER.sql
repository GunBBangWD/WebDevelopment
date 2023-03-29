/*
TRIGGER Ʈ����
�����ͺ��̽� Ư�� ����(�̺�Ʈ)�� �����Ͽ� ����Ǵ� ��ü
���Ἲ, �ڵ�ȭ ����
 CREATE OR REPLACE TRIGGER Ʈ���Ÿ�
 {BEFORE|AFTER} �̺�Ʈ�� {INSERT|UPDATE|DELETE}
 [OF Ư�� �÷�]
 ON ���̺��
 [REFERENCING OLD AS OLD|NEW AS NEW]
 [FOR EACH ROW WHEN ������]
 [FOLLOWS]
 [ENABLE|DISABLE]
 �����
 �����
 END Ʈ���Ÿ�;
 
 RA
*/

CREATE TABLE EMP_TRIG AS SELECT * FROM EMP;

CREATE OR REPLACE TRIGGER TRIG1
BEFORE INSERT OR UPDATE OR DELETE ON EMP_TRIG --EMP
BEGIN
        IF TO_CHAR(SYSDATE,'DY') IN ('��','��','��') THEN
                IF INSERTING THEN
                    RAISE_APPLICATION_ERROR(-20000,'��� ���� �߰� �Ұ�');
                ELSIF UPDATING THEN
                    RAISE_APPLICATION_ERROR(-20001,'��� ���� �߰� �Ұ�');
                ELSIF DELETING THEN
                    RAISE_APPLICATION_ERROR(-20002,'��� ���� �߰� �Ұ�');
                ELSE
                    RAISE_APPLICATION_ERROR(-20003,'��� ���� �߰� �Ұ�');
                END IF;
        END IF;
END;




