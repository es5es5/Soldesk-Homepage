--	각 테이블을 join을 이용해서 연결함
--		카테고리 = 대분류(NN), 중분류, 소분류(PK)
--		컨텐츠 = 소분류(NN), 과정명(PK), 학습기간(NN), 집합강의시간(NN), 교육비지원(NN), 교육비(NN), 

create table SOLDESK_contents
    (
        sc_category varchar2(20 char) not null,				-- 분류			ss_name join
        sc_title varchar2(20 char) primary key,				-- 과정명			SOLDESK_contents_substance_main_title join
        sc_teacher varchar2(10 char) not null,				-- 강사명 			SOLDESK_teacher_name join
    	sc_schedule_START date not null,					-- 교육일정(시작)
        sc_schedule_FINISH date not null,					-- 교육일정(끝)
        -- 교육기간은 종료일정에서 시작일정을 뺀 값을 넣음.
        
        sc_week number(3)not null,			-- 교육시간(요일)
        -- 덧샘뺄샘을 이용해서 7개 요일을 자유자제로 선택해서 고를 수 있게끔 설정
			-- 다 더해진 값이 저장됨.
			-- 가장 큰 값을 빼서 0보다 크면 해당 값의 요일이 표시.
			-- 0보다 작으면 그다음 큰 값을 뺌.
			-- 0이 될 때까지 반복.
		-- 월:1, 화:2, 수:4, 목:8, 금:16, 토:32, 일:64
		-- 모두 선택할 시, 127이 저장됨.
		
        sc_time_START date not null,						-- 교육시간(시작)
        sc_time_FINISH date not null,						-- 교육시간(끝)
        sc_capacity number(3) not null,						-- 수강정원
        
        sc_expenses number(10) not null						-- 교육비
    );
    
create table SOLDESK_contents_substance
	(
		scs_no number(10) not null,							-- 고유번호
		scs_main_title varchar2(20 char) not null,			-- 과정명			SOLDESK_contents_title join
		scs_title varchar2(20 char) not null,				-- 소내용 제목
		scs_info varchar2(4000) not null					-- 소내용 내용
	);

create table SOLDESK_teacher
    (
        st_no number(10) primary key,						-- 고유번호
        st_name varchar2(10 char) not null,					-- 강사명			SOLDESK_contents_teacher join
        st_photo varchar2(4000) not null,					-- 강사사진
        st_resume varchar2(4000) not null,					-- 경력사항
        st_certificate varchar2(4000) not null				-- 자격증
    );
    
create sequence SOLDESK_contents_substance_seq;
create sequence SOLDESK_teacher_seq;
    
insert into SOLDESK_contents values
	(
        '자바 빅데이터 취업반',									-- 분류			ss_name join
        '자바 보안코딩 빅데이터개발 양성과정',							-- 과정명			SOLDESK_contents_substance_main_title join
        '엄기흥',												-- 강사명 			SOLDESK_teacher_name join
    	to_date('2018.04.24','yyyy.mm.dd'),					-- 교육일정(시작)
    	to_date('2018.10.26','yyyy.mm.dd'),					-- 교육일정(끝)
        31,--1/2/4/8/16/32/64								-- 교육시간(요일)
        to_date('09:30','hh24:mi'),							-- 교육시간(시작)
        to_date('18:30','hh24:mi'),							-- 교육시간(끝)
        30,													-- 수강정원
        0													-- 교육비
	);
    
insert into SOLDESK_teacher values
    (
        SOLDESK_teacher_seq.nextval,						-- 고유번호
        '엄기흥',												-- 강사명			SOLDESK_contents_teacher join
        'http://www.soldesk.co.kr/images/pt!tcUGH.png',		-- 강사사진
        '- 숭실 대학교 정보과학 대학원 공학 석사',						-- 경력사항
        '- 직업 능력 개발 훈련 교사(서울 고용 노동청: 정보처리/사무자동화/멀티미디어)'-- 자격증
    );

insert into SOLDESK_contents_substance values
	(
		SOLDESK_contents_substance_seq.nextval,				-- 고유번호
		'자바 보안코딩 빅데이터개발 양성과정',							-- 과정명			SOLDESK_contents_title join
		'훈련목표',											-- 소내용 제목
		'- 자바 기반 머신러닝을 학습하여 실무 프로젝트를 수행 할 수 있는 능력 함양을 목표로 한다.'-- 소내용 내용
	);