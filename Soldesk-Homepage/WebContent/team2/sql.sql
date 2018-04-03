create table SOLDESK_contents
    (
        SOLDESK_contents_category varchar2(20 char) not null,		-- �з�		�з� join
        SOLDESK_contents_title varchar2(20 char) primary key,		-- ������		SOLDESK_contents_info_������ join
        SOLDESK_contents_goal varchar2(4000) not null,				-- �н���ǥ
        SOLDESK_contents_advance varchar2(4000) not null,			-- ����о�
        SOLDESK_contents_instructor varchar2(10 char) not null,		-- ����� 	SOLDESK_teacher_����� join
        SOLDESK_contents_curriculum varchar2(4000) not null,		-- Ŀ��ŧ��
        SOLDESK_contents_facilities varchar2(4000) not null			-- �ü��ȳ�
    );

create table SOLDESK_contents_info
    (
        SOLDESK_contents_info_title varchar2(20 char) primary key,	-- ������		SOLDESK_contents_������ join
        SOLDESK_contents_info_schedule date not null,				-- ��������
        SOLDESK_contents_info_period date not null,					-- �����Ⱓ
        SOLDESK_contents_info_time date not null,					-- �����ð�
        SOLDESK_contents_info_capacity number(3) not null			-- ��������
    );

create table SOLDESK_teacher
    (
        SOLDESK_teacher_name varchar2(10 char) primary key,			-- �����		SOLDESK_contents_����� join
        SOLDESK_teacher_resume varchar2(4000) not null,				-- ��»���
        SOLDESK_teacher_certificate varchar2(4000) not null			-- �ڰ���
    );