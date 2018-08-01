----------MEMBER DUMMY DATA----------------------
INSERT INTO MEMBER
VALUES('aaa@aaa.com', 'aaa', 'aaa', 'M', '010-1111-1111', '18/08/01', '/resource/aaa@aaa.com/prof/aaa.png');

----------BOARD DUMMY DATA----------------------
INSERT INTO BOARD
VALUES(SEQ_BOARD_BNO.NEXTVAL, 'aaa@aaa.com', '바다가고싶다', '2','1, 2', '128.33333', '128.33333', 'N', 'N');

----------BOARD_LIKE DUMMY DATA----------------------
INSERT INTO BOARD_LIKE
VALUES(SEQ_BOARD_LIKE_BLNO.NEXTVAL, 'aaa@aaa.com',1);

----------AD_LIST DUMMY DATA----------------------
INSERT INTO AD_LIST
VALUES(SEQ_AD_LIST_ADNO.NEXTVAL, 1, 'aaa','18/08/01','18/08/10','Y','너무 노잼이라서');

----------RESOURCES DUMMY DATA--------------------

INSERT INTO RESOURCES
VALUES(SEQ_RESOURCES_RNO.NEXTVAL, '/resource/aaa@aaa.com/board/aaa.png');

----------PRODUCT DUMMY DATA----------------------
INSERT INTO PRODUCT
VALUES(SEQ_PRODUCT_PNO.NEXTVAL, '탈곡기','강냉이를, 탈탈탈, 털어드리죠!','3, 4',100,'N',300000,'강냉이를 털어주는 좋은 탈곡기입니다.','N');

----------QNA DUMMY DATA--------------------------
INSERT INTO QNA
VALUES(SEQ_QNA_QNA_NO.NEXTVAL,'aaa@aaa.com','18/08/01','사람살려','그냥 데이터는 알아서 추가하게 할껄 그랬어','N');

----------SELLER DUMMY DATA-----------------------
INSERT INTO SELLER
VALUES(SEQ_SELLER_SNO.NEXTVAL, 'aaa@aaa.com', '111-1111-1111-11','NH채움','05143','서울시 XX구 XX동','XX아파트 X동 X호','죽창','죽창을 팔고싶습니다.');

----------CONTRACT DUMMY DATA---------------------
INSERT INTO CONTRACT
VALUES(SEQ_CONTRACT_CNO.NEXTVAL,'aaa@aaa.com',1,1,3,'11111',1111111111111);

----------DECLARATION DUMMY DATA------------------
INSERT INTO DECLARATION
VALUES(SEQ_DECLARATION_DNO.NEXTVAL,null,1,'N');

----------REPLY DUMMY DATA------------------------
INSERT INTO REPLY
VALUES(SEQ_REPLY_RNO.NEXTVAL,1,'더미','와 끝이 보인다','18/08/01','N');

----------REVIEW DUMMY DATA-----------------------
INSERT INTO REVIEW
VALUES(SEQ_REVIEW_RNO.NEXTVAL,1,1,'세기말 아이템입니다.');