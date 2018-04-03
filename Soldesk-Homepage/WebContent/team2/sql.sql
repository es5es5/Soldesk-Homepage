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
        SOLDESK_contents_info_schedule date not null,				-- 교육일정
        SOLDESK_contents_info_period date not null,					-- 교육기간
        SOLDESK_contents_info_time date not null,					-- 교육시간
        SOLDESK_contents_info_capacity number(3) not null			-- 수강정원
    );

create table SOLDESK_teacher
    (
        SOLDESK_teacher_name varchar2(10 char) primary key,			-- 강사명		SOLDESK_contents_강사명 join
        SOLDESK_teacher_resume varchar2(4000) not null,				-- 경력사항
        SOLDESK_teacher_certificate varchar2(4000) not null			-- 자격증
    );