--	�� ���̺��� join�� �̿��ؼ� ������
--		ī�װ� = ��з�(NN), �ߺз�, �Һз�(PK)
--		������ = �Һз�(NN), ������(PK), �н��Ⱓ(NN), ���հ��ǽð�(NN), ����������(NN), ������(NN), 

create table SOLDESK_contents
    (
        SOLDESK_contents_category varchar2(20 char) not null,		-- �з�			ss_name join
        SOLDESK_contents_title varchar2(20 char) primary key,		-- ������			SOLDESK_contents_substance_main_title join
        SOLDESK_contents_teacher varchar2(10 char) not null,		-- ����� 			SOLDESK_teacher_name join
    	SOLDESK_contents_schedule_START date not null,				-- ��������(����)
        SOLDESK_contents_schedule_FINISH date not null,				-- ��������(��)
        -- �����Ⱓ�� ������������ ���������� �� ���� ����.
        
        SOLDESK_contents_week number(3)not null,					-- �����ð�(����)
        -- ���������� �̿��ؼ� 7�� ������ ���������� �����ؼ� �� �� �ְԲ� ����
			-- �� ������ ���� �����.
			-- ���� ū ���� ���� 0���� ũ�� �ش� ���� ������ ǥ��.
			-- 0���� ������ �״��� ū ���� ��.
			-- 0�� �� ������ �ݺ�.
		-- ��:1, ȭ:2, ��:4, ��:8, ��:16, ��:32, ��:64
		-- ��� ������ ��, 127�� �����.
		
        SOLDESK_contents_time_START date not null,					-- �����ð�(����)
        SOLDESK_contents_time_FINISH date not null,					-- �����ð�(��)
        SOLDESK_contents_capacity number(3) not null,				-- ��������
        
        SOLDESK_contents_expenses number(10) not null				-- ������
    );

create table SOLDESK_contents_substance
	(
		SOLDESK_contents_substance_no number(10) not null,				-- ������ȣ
		SOLDESK_contents_substance_main_title varchar2(20 char) not null,	-- ������	SOLDESK_contents_title join
		SOLDESK_contents_substance_title varchar2(20 char) not null,	-- �ҳ��� ����
		SOLDESK_contents_substance_info varchar2(4000) not null			-- �ҳ��� ����
	);

create table SOLDESK_teacher
    (
        SOLDESK_teacher_name varchar2(10 char) primary key,			-- �����			SOLDESK_contents_teacher join
        SOLDESK_teacher_photo varchar2(4000) not null,				-- �������
        SOLDESK_teacher_resume varchar2(4000) not null,				-- ��»���
        SOLDESK_teacher_certificate varchar2(4000) not null			-- �ڰ���
    );