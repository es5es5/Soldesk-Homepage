create table SOLDESK_contents
    (
        SOLDESK_contents_category varchar2(20 char) not null,		-- 분류		분류 join
        SOLDESK_contents_title varchar2(20 char) primary key,		-- 과정명		SOLDESK_contents_info_과정명 join
        SOLDESK_contents_goal varchar2(4000) not null,				-- 학습목표
        SOLDESK_contents_advance varchar2(4000) not null,			-- 진출분야
        SOLDESK_contents_instructor varchar2(10 char) not null,		-- 강사명 	SOLDESK_teacher_강사명 join
        SOLDESK_contents_curriculum varchar2(4000) not null,		-- 커리큘럼
        SOLDESK_contents_facilities varchar2(4000) not null			-- 시설안내
    );

create table SOLDESK_contents_info
    (
        SOLDESK_contents_info_title varchar2(20 char) primary key,	-- 과정명		SOLDESK_contents_과정명 join
        SOLDESK_contents_info_schedule_START date not null,			-- 교육일정(시작)
        SOLDESK_contents_info_schedule_FINISH date not null,		-- 교육일정(끝)
        -- 교육기간은 종료일정에서 시작일정을 뺀 값을 넣음.
        
        SOLDESK_contents_info_week number(3)not null,				-- 교육시간(요일)
        -- 덧샘뺄샘을 이용해서 7개 요일을 자유자제로 선택해서 고를 수 있게끔 설정
			-- 다 더해진 값이 저장됨.
			-- 가장 큰 값을 빼서 0보다 크면 해당 값의 요일이 표시.
			-- 0보다 작으면 그다음 큰 값을 뺌.
			-- 0이 될 때까지 반복.
		-- 월:1, 화:2, 수:4, 목:8, 금:16, 토:32, 일:64
		-- 모두 선택할 시, 127이 저장됨.
			
        SOLDESK_contents_info_time_START date not null,				-- 교육시간(시작)
        SOLDESK_contents_info_time_FINISH date not null,			-- 교육시간(끝)
        SOLDESK_contents_info_capacity number(3) not null			-- 수강정원
    );

create table SOLDESK_teacher
    (
        SOLDESK_teacher_name varchar2(10 char) primary key,			-- 강사명		SOLDESK_contents_강사명 join
        SOLDESK_teacher_resume varchar2(4000) not null,				-- 경력사항
        SOLDESK_teacher_certificate varchar2(4000) not null			-- 자격증
    );