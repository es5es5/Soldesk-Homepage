create sequence soldesk_mainMenu_seq;

create table soldesk_mainMenu(
	sm_no number(3) primary key,
	sm_name varchar2(20char) not null
)

insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '�����ڱ�������');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '�����ڱ�������');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '4�������������');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '��������<br>��������');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '�����ڰ���<br>���輾��');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '���������');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, 'Ŀ�´�Ƽ');

select * from soldesk_mainMenu order by sm_no;

select * from SOL_SIDEMENU where ss_menuNumber=?;

drop sequence soldesk_mainMenu_seq;
drop table soldesk_mainMenu cascade constraint purge;

create sequence soldesk_subMenu_seq;

create table soldesk_subMenu(
	ss_no number(5) primary key,
	ss_name varchar2(20char) not null,
	ss_mainMenuNo number(3) not null,
	ss_type number(3) not null
)

select * from soldesk_subMenu;

select * from soldesk_subMenu where ss_mainMenuNo = 1 order by ss_no;

insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'�ڹ� ������ �����',1);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'�������� �����',1);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'��Ʈ��ũ �����',1);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'���α׷��� ����',2);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'�������� ����',2);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'��Ʈ��ũ ����',2);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'�ý��� ����',2);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'������ & AI',3);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'�繰���ͳ�',3);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'������������',3);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'����ũ',3);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'redhat ���α���',4);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'oracle ���α���',4);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'AWS ���α���',4);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'�����ڰ������輾��',5);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'���輾�� ��������',5);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'��������<br>����/��ҽ�û',5);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'��������� �Ұ�',6);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'��������� �ܺ�Ȱ��',6);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'����ı�',6);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'Blog',6);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'Cafe',6);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'��������',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'���� �ϴ� ����',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'Ư��/���̳�',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'���������ͺ�',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'���ü���ͺ�',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'Gallery',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'�¶��� ���',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'�¶��� ����',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'���ô� ��',7);

delete from soldesk_subMenu where ss_no=31;

drop sequence soldesk_subMenu_seq;
drop table soldesk_subMenu cascade constraint purge;