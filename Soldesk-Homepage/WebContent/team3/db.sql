create sequence soldesk_mainMenu_seq;

create table soldesk_mainMenu(
	sm_no number(3) primary key,
	sm_name varchar2(20char) not null
)

insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '구직자국비지원');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '재직자국비지원');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '4차산업교육과정');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '국제공인<br>교육과정');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '국제자격증<br>시험센터');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '취업지원실');
insert into soldesk_mainMenu values(soldesk_mainMenu_seq.nextval, '커뮤니티');

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

insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'자바 빅데이터 취업반',1);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'정보보안 취업반',1);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'네트워크 취업반',1);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'프로그래밍 과정',2);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'정보보안 과정',2);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'네트워크 과정',2);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'시스템 과정',2);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'빅데이터 & AI',3);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'사물인터넷',3);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'가상증강현실',3);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'핀테크',3);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'redhat 공인교육',4);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'oracle 공인교육',4);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'AWS 공인교육',4);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'국제자격증시험센터',5);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'시험센터 공지사항',5);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'시험접수<br>변경/취소신청',5);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'취업지원실 소개',6);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'취업지원실 외부활동',6);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'취업후기',6);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'Blog',6);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'Cafe',6);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'공지사항',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'자주 하는 질문',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'특강/세미나',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'수강생인터뷰',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'기업체인터뷰',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'Gallery',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'온라인 상담',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'온라인 결제',7);
insert into soldesk_subMenu values(soldesk_subMenu_seq.nextval,'오시는 길',7);

delete from soldesk_subMenu where ss_no=31;

drop sequence soldesk_subMenu_seq;
drop table soldesk_subMenu cascade constraint purge;