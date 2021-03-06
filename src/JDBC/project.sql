유저 테이블 생성
CREATE TABLE MEMBER (
NAME VARCHAR2(50) NOT NULL,
EMAIL VARCHAR2(50) NOT NULL PRIMARY KEY,
PW VARCHAR2(50) NOT NULL,
ADDRESS VARCHAR2(50),
TEL VARCHAR2(50)
)

테이블 값 삽입(멤버)
INSERT INTO MEMBER values('2주0', 'ken0000@naver.com', '1234567', '집2', '010-4128-3480')

테이블 조회(멤버)
SELECT * FROM MEMBER

행 삭제(멤버)
DELETE FROM MEMBER WHERE TEL='123'
----------------------------------------------------------------
홈키트 테이블 생성
CREATE TABLE HOMEKIT (
KIT_NAME VARCHAR2(100) NOT NULL,
KIT_STYLE VARCHAR2(50) NOT NULL,
KIT_IMG VARCHAR2(300) NOT NULL
)

테이블 값 삽입(홈키트)
INSERT INTO HOMEKIT values('빌딩 숲 가운데 우리만의 아지트, 뉴욕 맨해튼 신혼집', '유니크&믹스', 'HOMEKIT_IMG/1016 빌딩 숲 가운데 우리만의 아지트, 뉴욕 맨해튼 신혼집.jpg')

테이블 조회(홈키트)
SELECT * FROM HOMEKIT

행 삭제(홈키트)
DELETE FROM HOMEKIT WHERE KIT_NAME='오후의 빛과 색감이 어우러진 자매의 복층 오피스텔'
----------------------------------------------------------------
상품 테이블 생성
CREATE TABLE PRODUCT (
PRO_NAME VARCHAR2(50) NOT NULL,
PRO_STYLE VARCHAR2(50) NOT NULL,
PRO_PRICE NUMBER(30),
PRO_IMGPATH VARCHAR2(300) NOT NULL
)

테이블 값 삽입(상품)
INSERT INTO PRODUCT values('유리 화병', '클래식', 17000, 'Product_img/Classic/787_7(유리 화병-17000).PNG')

테이블 조회(상품)
SELECT * FROM PRODUCT

행 삭제(상품)
DELETE FROM PRODUCT WHERE PRO_NAME='컬러볼 시계'

----------------------------------------------------------------
장바구니 테이블 생성
CREATE TABLE CART (
CART_SEQ NUMBER(30) NOT NULL PRIMARY KEY,
EMAIL VARCHAR2(50) NOT NULL,
CONSTRAINT FK_CART FOREIGN KEY (EMAIL) REFERENCES MEMBER (EMAIL),
PRO_NAME VARCHAR2(50) NOT NULL,
PRO_CNT NUMBER(30) NOT NULL,
PRO_PRICE NUMBER(30) NOT NULL,
PRO_IMGPATH VARCHAR2(300) NOT NULL
)

테이블 값 삽입(장바구니)
INSERT INTO CART values(CART_SEQ.nextval, 'ken1204@naver.com', '유리 화병', 1, 17000, 'Product_img/Classic/787_7(유리 화병-17000).PNG')

테이블 조회(장바구니)
SELECT * FROM CART

행 삭제(장바구니)
DELETE FROM CART WHERE PRO_NAME='접이식 스탠드'

시퀀스 생성(장바구니)
CREATE SEQUENCE CART_SEQ
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
CYCLE

시퀀스 삭제(장바구니)
DROP SEQUENCE CART_SEQ
----------------------------------------------------------------

테이블 제거
--DROP TABLE MEMBER;
--DROP TABLE HOMEKIT;
--DROP TABLE PRODUCT;
--DROP TABLE CART;
