create table SOLDESK_category
    (
        SOLDESK_category_��з� varchar2(20 char) not null,
        SOLDESK_category_�ߺз� varchar2(20 char) not null,
        SOLDESK_category_�Һз� varchar2(20 char) primary key        -- SOLDESK_contents_�Һз� join
    );

create table SOLDESK_contents
    (
        SOLDESK_contents_�Һз� varchar2(20 char) not null,            -- SOLDESK_category_�Һз� join
        SOLDESK_contents_������ varchar2(20 char) primary key,        -- SOLDESK_contents_info_������ join
        SOLDESK_contents_�н���ǥ varchar2(4000) not null,
        SOLDESK_contents_����о� varchar2(4000) not null,
        SOLDESK_contents_����� varchar2(10 char) not null,            -- SOLDESK_teacher_����� join
        SOLDESK_contents_Ŀ��ŧ�� varchar2(4000) not null,
        SOLDESK_contents_�ü��ȳ� varchar2(4000) not null
    );

create table SOLDESK_contents_info
    (
        SOLDESK_contents_info_������ varchar2(20 char) primary key,    -- SOLDESK_contents_������ join
        SOLDESK_contents_info_�������� date not null,
        SOLDESK_contents_info_�����Ⱓ date not null,
        SOLDESK_contents_info_�����ð� date not null,
        SOLDESK_contents_info_�������� number(3) not null
    );

create table SOLDESK_teacher
    (
        SOLDESK_teacher_����� varchar2(10 char) primary key,        -- SOLDESK_contents_����� join
        SOLDESK_teacher_��»��� varchar2(4000) not null,
        SOLDESK_teacher_�ڰ��� varchar2(4000) not null
    );