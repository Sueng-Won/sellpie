----------MEMBER DUMMY DATA----------------------
INSERT INTO MEMBER
VALUES('aaa@aaa.com', 'aaa', 'aaa', 'M', '010-1111-1111', '18/08/01', '/resource/aaa@aaa.com/prof/aaa.png');

----------BOARD DUMMY DATA----------------------
INSERT INTO BOARD
VALUES(SEQ_BOARD_BNO.NEXTVAL, 'aaa@aaa.com', '�ٴٰ���ʹ�', '2','1, 2', '128.33333', '128.33333', 'N', 'N');

----------BOARD_LIKE DUMMY DATA----------------------
INSERT INTO BOARD_LIKE
VALUES(SEQ_BOARD_LIKE_BLNO.NEXTVAL, 'aaa@aaa.com',1);

----------AD_LIST DUMMY DATA----------------------
INSERT INTO AD_LIST
VALUES(SEQ_AD_LIST_ADNO.NEXTVAL, 1, 'aaa','18/08/01','18/08/10','Y','�ʹ� �����̶�');

----------RESOURCES DUMMY DATA--------------------

INSERT INTO RESOURCES
VALUES(SEQ_RESOURCES_RNO.NEXTVAL, '/resource/aaa@aaa.com/board/aaa.png');

----------PRODUCT DUMMY DATA----------------------
INSERT INTO PRODUCT
VALUES(SEQ_PRODUCT_PNO.NEXTVAL, 'Ż���','�����̸�, ŻŻŻ, �о�帮��!','3, 4',100,'N',300000,'�����̸� �о��ִ� ���� Ż����Դϴ�.','N');

----------QNA DUMMY DATA--------------------------
INSERT INTO QNA
VALUES(SEQ_QNA_QNA_NO.NEXTVAL,'aaa@aaa.com','18/08/01','������','�׳� �����ʹ� �˾Ƽ� �߰��ϰ� �Ҳ� �׷���','N');

----------SELLER DUMMY DATA-----------------------
INSERT INTO SELLER
VALUES(SEQ_SELLER_SNO.NEXTVAL, 'aaa@aaa.com', '111-1111-1111-11','NHä��','05143','����� XX�� XX��','XX����Ʈ X�� Xȣ','��â','��â�� �Ȱ�ͽ��ϴ�.');

----------CONTRACT DUMMY DATA---------------------
INSERT INTO CONTRACT
VALUES(SEQ_CONTRACT_CNO.NEXTVAL,'aaa@aaa.com',1,1,3,'11111',1111111111111);

----------DECLARATION DUMMY DATA------------------
INSERT INTO DECLARATION
VALUES(SEQ_DECLARATION_DNO.NEXTVAL,null,1,'N');

----------REPLY DUMMY DATA------------------------
INSERT INTO REPLY
VALUES(SEQ_REPLY_RNO.NEXTVAL,1,'����','�� ���� ���δ�','18/08/01','N');

----------REVIEW DUMMY DATA-----------------------
INSERT INTO REVIEW
VALUES(SEQ_REVIEW_RNO.NEXTVAL,1,1,'���⸻ �������Դϴ�.');