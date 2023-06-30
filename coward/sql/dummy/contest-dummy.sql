-- Conest Dummy
INSERT INTO CONTEST (CONTEST_NO, MEMBER_NO, CONTEST_TITLE, TYPE_NO,
                    SUBJECT, QUALIFICATION, ADD_INFOMATION,
                    CREATE_DATE, END_DATE, SKILL, PRICE, THUMBNAIL, AD_NO, WINNER, CON_STATUS)
VALUES (SEQ_CONTEST_NO.NEXTVAL, 1, '!!DOT BAGEL FACTORY 홈페이지 제작 공모전', 4,
        '신규 런칭 브랜드 DOT BAGLE FACTORY 온라인 쇼핑몰 제작', 'Spring Porject 경험이 있으신 분', '추후 디자인 변동 가능성 있음',
        DEFAULT, TO_DATE('2023-08-10', 'YYYY-MM-DD'), 'SPRING,Java', 800,
        'resources/assets/images/dummy/contest-thumbnail/contest13.jpg', 1, NULL, '모집중');
