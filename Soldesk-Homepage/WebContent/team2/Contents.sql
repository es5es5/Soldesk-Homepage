--	�� ���̺��� join�� �̿��ؼ� ������
--		ī�װ� = ��з�(NN), �ߺз�, �Һз�(PK)
--		������ = �Һз�(NN), ������(PK), �н��Ⱓ(NN), ���հ��ǽð�(NN), ����������(NN), ������(NN), 

create table SOLDESK_contents
    (
        sc_category varchar2(20 char) not null,				-- �з�			ss_name join
        sc_title varchar2(20 char) primary key,				-- ������			SOLDESK_contents_substance_main_title join
        sc_teacher varchar2(10 char) not null,				-- ����� 			SOLDESK_teacher_name join
    	sc_schedule_START date not null,					-- ��������(����)
        sc_schedule_FINISH date not null,					-- ��������(��)
        -- �����Ⱓ�� ������������ ���������� �� ���� ����.
        
        sc_week number(3)not null,			-- �����ð�(����)
        -- ���������� �̿��ؼ� 7�� ������ ���������� �����ؼ� �� �� �ְԲ� ����
			-- �� ������ ���� �����.
			-- ���� ū ���� ���� 0���� ũ�� �ش� ���� ������ ǥ��.
			-- 0���� ������ �״��� ū ���� ��.
			-- 0�� �� ������ �ݺ�.
		-- ��:1, ȭ:2, ��:4, ��:8, ��:16, ��:32, ��:64
		-- ��� ������ ��, 127�� �����.
		
        sc_time_START date not null,						-- �����ð�(����)
        sc_time_FINISH date not null,						-- �����ð�(��)
        sc_capacity number(3) not null,						-- ��������
        
        sc_expenses number(10) not null						-- ������
    );
    
create table SOLDESK_contents_substance
	(
		scs_no number(10) not null,							-- ������ȣ
		scs_main_title varchar2(20 char) not null,			-- ������			SOLDESK_contents_title join
		scs_title varchar2(20 char) not null,				-- �ҳ��� ����
		scs_info varchar2(4000) not null					-- �ҳ��� ����
	);

create table SOLDESK_teacher
    (
        st_no number(10) primary key,						-- ������ȣ
        st_name varchar2(10 char) not null,					-- �����			SOLDESK_contents_teacher join
        st_photo varchar2(4000) not null,					-- �������
        st_resume varchar2(4000) not null,					-- ��»���
        st_certificate varchar2(4000) not null				-- �ڰ���
    );
    
create sequence SOLDESK_contents_substance_seq;
create sequence SOLDESK_teacher_seq;
    
insert into SOLDESK_contents values
	(
        '�ڹ� ������ �����',									-- �з�			ss_name join
        '�ڹ� �����ڵ� �����Ͱ��� �缺����',							-- ������			SOLDESK_contents_substance_main_title join
        '������',												-- ����� 			SOLDESK_teacher_name join
    	to_date('2018.04.24','yyyy.mm.dd'),					-- ��������(����)
    	to_date('2018.10.26','yyyy.mm.dd'),					-- ��������(��)
        31,--1/2/4/8/16/32/64								-- �����ð�(����)
        to_date('09:30','hh24:mi'),							-- �����ð�(����)
        to_date('18:30','hh24:mi'),							-- �����ð�(��)
        30,													-- ��������
        0													-- ������
	);
    
insert into SOLDESK_teacher values
    (
        SOLDESK_teacher_seq.nextval,						-- ������ȣ
        '������',												-- �����			SOLDESK_contents_teacher join
        'http://www.soldesk.co.kr/images/pt!tcUGH.png',		-- �������
        '- ���� ���б� �������� ���п� ���� ����',						-- ��»���
        '- ���� �ɷ� ���� �Ʒ� ����(���� ��� �뵿û: ����ó��/�繫�ڵ�ȭ/��Ƽ�̵��)'-- �ڰ���
    );

insert into SOLDESK_contents_substance values
	(
		SOLDESK_contents_substance_seq.nextval,				-- ������ȣ
		'�ڹ� �����ڵ� �����Ͱ��� �缺����',							-- ������			SOLDESK_contents_title join
		'�Ʒø�ǥ',											-- �ҳ��� ����
		'- �ڹ� ��� �ӽŷ����� �н��Ͽ� �ǹ� ������Ʈ�� ���� �� �� �ִ� �ɷ� �Ծ��� ��ǥ�� �Ѵ�.'-- �ҳ��� ����
	);