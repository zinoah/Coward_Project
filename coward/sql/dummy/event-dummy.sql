 --event 테이블, 시퀀스 불도저 구문

-- DROP TABLE "EVENT"  CASCADE CONSTRAINTS;
--
-- CREATE TABLE "EVENT" (
-- 	"EVENT_NO"	NUMBER	CONSTRAINT "PK_EVENT" PRIMARY KEY,
-- 	"EVENT_TITLE"	VARCHAR2(500)	NOT	NULL,
-- 	"EVENT_THUMBNAIL"	VARCHAR2(500)	NOT	NULL,
-- 	"EVENT_CONTENT"	VARCHAR2(500)	NOT	NULL,
-- 	"BANNER_IMG"	VARCHAR2(500)		NULL,
-- 	"AD_IMG"	VARCHAR2(500)		NULL,
-- 	"CREATE_DATE"	DATE	DEFAULT SYSDATE	NULL,
-- 	"END_DATE"	DATE		NULL,
-- 	"STATUS_FL"	VARCHAR2(20)	DEFAULT 'N'
-- );
--
-- DROP SEQUENCE SEQ_EVENT_NO;
--
-- CREATE SEQUENCE SEQ_EVENT_NO
-- INCREMENT BY 1
-- START WITH 1
-- MINVALUE 1
-- MAXVALUE 9999
-- NOCYCLE
-- NOCACHE
-- NOORDER;





-- Note: Event Dummy (STATUS_FL = 'Y')
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '추천인 코드만 발급받아도 네이버 페이 지급!'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-1.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-1.png'
		, NULL, NULL, '2023-06-12', '2023-12-31', 'Y');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '코워드 추천인 이벤트!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-2.png'
, 'resources/assets/images/dummy/event-detail/event-detail-2.png'
, NULL, NULL, '2023-04-21', '2023-12-31', 'Y');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<전시이벤트> 서울일러스트레이션 페어 V.14'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-3.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-3.png'
		, NULL, NULL, '2023-06-12', '2023-12-31', 'Y');
	
-- Note: Event Dummy (STATUS_FL = 'N')
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '[코워드] P터레스트, G글보다 디자인 쉽게 찾는 사이트!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-4.png'
, 'resources/assets/images/dummy/event-detail/event-detail-4.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '국내 80% 디자이너가 활동하는 디자인플랫폼'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-5.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-5.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '코워드 페이백 이벤트'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-6.png'
, 'resources/assets/images/dummy/event-detail/event-detail-6.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '홍보물 인쇄 어디에 맡기나요? 제작비 지원 이벤트!'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-7.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-7.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '추천인 코드만 발급받아도 네이버 페이 지급!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-8.png'
, 'resources/assets/images/dummy/event-detail/event-detail-8.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> UX 디자이너로 일하고 있습니다'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-9.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-9.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드 마켓 정식 오픈 기념 수수료 0원 이벤트!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-10.png'
, 'resources/assets/images/dummy/event-detail/event-detail-10.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<전시이벤트> 서울일러스트레이션 페어 V.13'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-11.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-11.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 완성된 웹사이트로 배우는 HTML&CSS 웹 디자인'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-12.png'
, 'resources/assets/images/dummy/event-detail/event-detail-12.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 등록비 100% 환불 프로모션'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-13.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-13.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 찐 UXer가 알려주는 UX/UI 실무 가이드'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-14.png'
, 'resources/assets/images/dummy/event-detail/event-detail-14.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 등록비 100% 환불 프로모션'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-15.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-15.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 웹툰 제작 무작정 따라하기'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-16.png'
, 'resources/assets/images/dummy/event-detail/event-detail-16.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '아이디어 카테고리 확장 기념 쿠폰 이벤트'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-17.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-17.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '[제1회 크크콘테스트] 지독하게 사랑했던 구최애에게 보내는 그림편지'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-18.png'
, 'resources/assets/images/dummy/event-detail/event-detail-18.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 5월 쿠폰 이벤트'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-19.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-19.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 맛있는 디자인 CC 2022 시리즈 2종!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-20.png'
, 'resources/assets/images/dummy/event-detail/event-detail-20.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 콘테스트 100만원 쿠폰팩 이벤트!'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-21.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-21.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 길벗-프리미어 프로&애프터 이펙트 CC 2022 무따기'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-22.png'
, 'resources/assets/images/dummy/event-detail/event-detail-22.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 당당한 디자인 결정을 위한 9가지 방법'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-23.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-23.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<라우드 마켓 지원 이벤트> 30만원을 진짜로 지원합니다!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-24.png'
, 'resources/assets/images/dummy/event-detail/event-detail-24.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 유튜브 애니메이션 무작정 따라하기'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-25.png'
, 'resources/assets/images/dummy/event-detail/event-detail-25.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

--

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '[코워드] P터레스트, G글보다 디자인 쉽게 찾는 사이트!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-26.png'
, 'resources/assets/images/dummy/event-detail/event-detail-4.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '국내 80% 디자이너가 활동하는 디자인플랫폼'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-27.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-5.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '코워드 페이백 이벤트'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-28.png'
, 'resources/assets/images/dummy/event-detail/event-detail-6.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '홍보물 인쇄 어디에 맡기나요? 제작비 지원 이벤트!'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-29.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-7.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '추천인 코드만 발급받아도 네이버 페이 지급!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-30.png'
, 'resources/assets/images/dummy/event-detail/event-detail-8.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> UX 디자이너로 일하고 있습니다'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-31.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-9.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드 마켓 정식 오픈 기념 수수료 0원 이벤트!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-32.png'
, 'resources/assets/images/dummy/event-detail/event-detail-10.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<전시이벤트> 서울일러스트레이션 페어 V.13'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-33.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-11.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 완성된 웹사이트로 배우는 HTML&CSS 웹 디자인'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-34.png'
, 'resources/assets/images/dummy/event-detail/event-detail-12.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 등록비 100% 환불 프로모션'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-35.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-13.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 찐 UXer가 알려주는 UX/UI 실무 가이드'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-36.png'
, 'resources/assets/images/dummy/event-detail/event-detail-14.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 등록비 100% 환불 프로모션'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-37.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-15.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 웹툰 제작 무작정 따라하기'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-38.png'
, 'resources/assets/images/dummy/event-detail/event-detail-16.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '아이디어 카테고리 확장 기념 쿠폰 이벤트'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-39.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-17.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '[제1회 크크콘테스트] 지독하게 사랑했던 구최애에게 보내는 그림편지'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-40.png'
, 'resources/assets/images/dummy/event-detail/event-detail-18.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 5월 쿠폰 이벤트'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-41.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-19.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 맛있는 디자인 CC 2022 시리즈 2종!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-42.png'
, 'resources/assets/images/dummy/event-detail/event-detail-20.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 콘테스트 100만원 쿠폰팩 이벤트!'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-43.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-21.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 길벗-프리미어 프로&애프터 이펙트 CC 2022 무따기'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-44.png'
, 'resources/assets/images/dummy/event-detail/event-detail-22.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 당당한 디자인 결정을 위한 9가지 방법'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-45.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-23.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<라우드 마켓 지원 이벤트> 30만원을 진짜로 지원합니다!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-46.png'
, 'resources/assets/images/dummy/event-detail/event-detail-24.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 유튜브 애니메이션 무작정 따라하기'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-47.png'
, 'resources/assets/images/dummy/event-detail/event-detail-25.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

--

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '[코워드] P터레스트, G글보다 디자인 쉽게 찾는 사이트!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-48.png'
, 'resources/assets/images/dummy/event-detail/event-detail-4.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '국내 80% 디자이너가 활동하는 디자인플랫폼'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-49.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-5.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '코워드 페이백 이벤트'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-50.png'
, 'resources/assets/images/dummy/event-detail/event-detail-6.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '홍보물 인쇄 어디에 맡기나요? 제작비 지원 이벤트!'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-51.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-7.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '추천인 코드만 발급받아도 네이버 페이 지급!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-52.png'
, 'resources/assets/images/dummy/event-detail/event-detail-8.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> UX 디자이너로 일하고 있습니다'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-53.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-9.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드 마켓 정식 오픈 기념 수수료 0원 이벤트!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-54.png'
, 'resources/assets/images/dummy/event-detail/event-detail-10.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<전시이벤트> 서울일러스트레이션 페어 V.13'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-55.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-11.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 완성된 웹사이트로 배우는 HTML&CSS 웹 디자인'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-56.png'
, 'resources/assets/images/dummy/event-detail/event-detail-12.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 등록비 100% 환불 프로모션'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-57.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-13.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 찐 UXer가 알려주는 UX/UI 실무 가이드'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-58.png'
, 'resources/assets/images/dummy/event-detail/event-detail-14.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 등록비 100% 환불 프로모션'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-59.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-15.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 웹툰 제작 무작정 따라하기'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-60.png'
, 'resources/assets/images/dummy/event-detail/event-detail-16.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '아이디어 카테고리 확장 기념 쿠폰 이벤트'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-61.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-17.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '[제1회 크크콘테스트] 지독하게 사랑했던 구최애에게 보내는 그림편지'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-62.png'
, 'resources/assets/images/dummy/event-detail/event-detail-18.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 5월 쿠폰 이벤트'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-63.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-19.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 맛있는 디자인 CC 2022 시리즈 2종!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-64.png'
, 'resources/assets/images/dummy/event-detail/event-detail-20.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 콘테스트 100만원 쿠폰팩 이벤트!'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-65.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-21.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 길벗-프리미어 프로&애프터 이펙트 CC 2022 무따기'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-66.png'
, 'resources/assets/images/dummy/event-detail/event-detail-22.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 당당한 디자인 결정을 위한 9가지 방법'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-67.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-23.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<라우드 마켓 지원 이벤트> 30만원을 진짜로 지원합니다!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-68.png'
, 'resources/assets/images/dummy/event-detail/event-detail-24.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 유튜브 애니메이션 무작정 따라하기'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-69.png'
, 'resources/assets/images/dummy/event-detail/event-detail-25.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

--
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '[제1회 크크콘테스트] 지독하게 사랑했던 구최애에게 보내는 그림편지'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-70.png'
, 'resources/assets/images/dummy/event-detail/event-detail-18.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 5월 쿠폰 이벤트'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-71.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-19.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 맛있는 디자인 CC 2022 시리즈 2종!'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-72.png'
, 'resources/assets/images/dummy/event-detail/event-detail-20.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '라우드소싱 콘테스트 100만원 쿠폰팩 이벤트!'
		, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-73.png'
		, 'resources/assets/images/dummy/event-detail/event-detail-21.png'
		, NULL, NULL, '2023-06-12', '2023-06-10', 'N');
	
INSERT INTO EVENT (EVENT_NO, EVENT_TITLE, 
					EVENT_THUMBNAIL, 
					EVENT_CONTENT
					,BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS_FL) 
VALUES(SEQ_EVENT_NO.NEXTVAL, '<도서이벤트> 길벗-프리미어 프로&애프터 이펙트 CC 2022 무따기'
, 'resources/assets/images/dummy/event-thumbnail/event-thumbnail-74.png'
, 'resources/assets/images/dummy/event-detail/event-detail-22.png'
, NULL, NULL, '2023-06-12', '2023-06-10', 'N');

	
COMMIT;
	