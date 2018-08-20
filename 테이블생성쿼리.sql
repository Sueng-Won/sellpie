-----------����ڻ���(SYSTEM)---------------
CREATE USER SELLPIE IDENTIFIED BY SELLPIE;
GRANT CONNECT, RESOURCE TO SELLPIE;

-----------���̺����(SELLPIE)--------------
CREATE TABLE MEMBER(
EMAIL VARCHAR2(30) PRIMARY KEY,
PWD VARCHAR2(80),
NAME VARCHAR2(20),
GENDER VARCHAR2(5) CHECK(GENDER IN ('M','F')),
PHONE VARCHAR2(20),
BIRTH VARCHAR2(15),
PROFILE_IMG VARCHAR2(1000)
);
--쿠키세션아이디를 저장할 컬럼과 데이트타입 제한기간 설정 테이블 추가
ALTER TABLE MEMBER ADD SESSIONKEY VARCHAR(50) DEFAULT 'none';
ALTER TABLE MEMBER MODIFY SESSIONKEY VARCHAR(50) NOT NULL;
ALTER TABLE MEMBER ADD SESSIONLIMIT DATE;

CREATE TABLE ADDFRIEND(
ANO NUMBER PRIMARY KEY,
APPLICANT_EMAIL VARCHAR2(30),
SUBJECT_EMAIL VARCHAR2(30),
ISAPPLY CHAR(1) CHECK(ISAPPLY IN ('Y','N'))
);

CREATE TABLE QNA(
QNA_NO NUMBER PRIMARY KEY,
EMAIL VARCHAR2(30),
QNA_DATE DATE,
QNA_TITLE VARCHAR2(200),
QNA_CONTENT VARCHAR2(3000),
QNA_STATE VARCHAR2(1) CHECK(QNA_STATE IN ('Y','N'))
);

CREATE TABLE STATS(
STATS_DATE DATE PRIMARY KEY,
VISIT_COUNT NUMBER
);

CREATE TABLE AD_LIST(
ADNO NUMBER PRIMARY KEY,
BNO NUMBER,
ADNAME VARCHAR2(1000),
AD_START_DATE DATE,
AD_END_DATE DATE,
AD_STATE CHAR(1) CHECK(AD_STATE IN ('Y','N')),
R_COMMENT VARCHAR2(1000)
);

CREATE TABLE BOARD(
BNO NUMBER PRIMARY KEY,
EMAIL VARCHAR2(100),
BCONTENT VARCHAR2(4000),
GCOUNT NUMBER,
RURL VARCHAR2(4000),
LATITUDE FLOAT,
LONGITUDE FLOAT,
ISAD CHAR(1) CHECK(ISAD IN ('Y','N')),
DELFLAG CHAR(1) CHECK(DELFLAG IN ('Y','N'))
);

CREATE TABLE REPLY(
RNO NUMBER PRIMARY KEY,
BNO NUMBER,
WRITER VARCHAR2(50),
CONTENT VARCHAR2(4000),
WRITEDATE DATE,
DELFLAG CHAR(1) CHECK(DELFLAG IN ('Y','N'))
);

CREATE TABLE BOARD_LIKE(
BLNO NUMBER PRIMARY KEY,
EMAIL VARCHAR2(30),
BNO NUMBER
);

CREATE TABLE SELLER(
SNO NUMBER PRIMARY KEY,
EMAIL VARCHAR2(100),
ACNUM VARCHAR2(100),
BANK VARCHAR2(30),
ZIPCODE VARCHAR2(5),
ADDR VARCHAR2(100),
ADDRDETAIL VARCHAR2(100),
PCATEGORY VARCHAR2(100),
REASON VARCHAR2(4000)
);

CREATE TABLE PRODUCT(
PNO NUMBER PRIMARY KEY,
SNO NUMBER,
PNAME VARCHAR2(100),
SELTAG VARCHAR2(100),
RURL VARCHAR2(4000),
PQUANTITY NUMBER,
ISCRAFT CHAR(1) CHECK(ISCRAFT IN ('Y','N')),
PRICE NUMBER,
PDETAIL VARCHAR2(4000),
DELFLAG CHAR(1) CHECK(DELFLAG IN ('Y','N'))
);

CREATE TABLE REVIEW(
RNO NUMBER PRIMARY KEY,
PNO NUMBER,
REVIEWSTAR NUMBER
);

CREATE TABLE RESOURCES(
RNO NUMBER PRIMARY KEY,
RSRC VARCHAR2(1000)
);

CREATE TABLE CONTRACT(
CNO NUMBER PRIMARY KEY,
EMAIL VARCHAR2(30),
SNO NUMBER,
PNO NUMBER,
QUANTITY NUMBER,
DELIVCODE VARCHAR2(5),
INVNUM VARCHAR2(30)
);

CREATE TABLE DECLARATION(
DNO NUMBER PRIMARY KEY,
BNO NUMBER,
PNO NUMBER,
ISDEC CHAR(1) CHECK(ISDEC IN ('Y','N'))
);

---------����������---------------

CREATE SEQUENCE SEQ_ADDFRIEND_ANO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_QNA_QNA_NO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_AD_LIST_ADNO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_BOARD_BNO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_REPLY_RNO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_BOARD_LIKE_BLNO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_SELLER_SNO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_PRODUCT_PNO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_REVIEW_RNO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_RESOURCES_RNO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_CONTRACT_CNO
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE SEQ_DECLARATION_DNO
INCREMENT BY 1
START WITH 1;
