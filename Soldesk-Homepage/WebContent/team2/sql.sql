create table SOLDESK_category
    (
        SOLDESK_category_대분류 varchar2(20 char) not null,
        SOLDESK_category_중분류 varchar2(20 char) not null,
        SOLDESK_category_소분류 varchar2(20 char) primary key        -- SOLDESK_contents_소분류 join
    );

create table SOLDESK_contents
    (
        SOLDESK_contents_소분류 varchar2(20 char) not null,            -- SOLDESK_category_소분류 join
        SOLDESK_contents_과정명 varchar2(20 char) primary key,        -- SOLDESK_contents_info_과정명 join
        SOLDESK_contents_학습목표 varchar2(4000) not null,
        SOLDESK_contents_진출분야 varchar2(4000) not null,
        SOLDESK_contents_강사명 varchar2(10 char) not null,            -- SOLDESK_teacher_강사명 join
        SOLDESK_contents_커리큘럼 varchar2(4000) not null,
        SOLDESK_contents_시설안내 varchar2(4000) not null
    );

create table SOLDESK_contents_info
    (
        SOLDESK_contents_info_과정명 varchar2(20 char) primary key,    -- SOLDESK_contents_과정명 join
        SOLDESK_contents_info_교육일정 date not null,
        SOLDESK_contents_info_교육기간 date not null,
        SOLDESK_contents_info_교육시간 date not null,
        SOLDESK_contents_info_수강정원 number(3) not null
    );

create table SOLDESK_teacher
    (
        SOLDESK_teacher_강사명 varchar2(10 char) primary key,        -- SOLDESK_contents_강사명 join
        SOLDESK_teacher_경력사항 varchar2(4000) not null,
        SOLDESK_teacher_자격증 varchar2(4000) not null
    );