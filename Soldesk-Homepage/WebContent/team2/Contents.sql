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
        st_name varchar2(10 char) primary key,				-- 강사명			SOLDESK_contents_teacher join
        st_photo varchar2(4000) not null,					-- 강사사진
        st_resume varchar2(4000) not null,					-- 경력사항
        st_certificate varchar2(4000) not null				-- 자격증
    );