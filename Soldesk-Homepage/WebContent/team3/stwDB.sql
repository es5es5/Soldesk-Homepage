create table write_notice(
	wn_no number(5) primary key,		
	wn_title varchar2(100 char) not null,
	wn_txt varchar2(200 char) not null,
	wn_date date not null
);
create sequence write_notice_seq;

insert into write_notice values(write_notice_seq.nextval,'공지사항 테스트40', '공지사항 테스트40', sysdate);
insert into write_notice values(write_notice_seq.nextval,'공지사항 테스트41', '공지사항 테스트41', sysdate);
insert into write_notice values(write_notice_seq.nextval,'공지사항 테스트42', '공지사항 테스트42', sysdate);
insert into write_notice values(write_notice_seq.nextval,'공지사항 테스트43', '공지사항 테스트43', sysdate);
insert into write_notice values(write_notice_seq.nextval,'공지사항 테스트44', '공지사항 테스트44', sysdate);
insert into write_notice values(write_notice_seq.nextval,'공지사항 테스트45', '공지사항 테스트45', sysdate);
insert into write_notice values(write_notice_seq.nextval,'공지사항 테스트46', '공지사항 테스트46', sysdate);
insert into write_notice values(write_notice_seq.nextval,'공지사항 테스트47', '공지사항 테스트47', sysdate);
insert into write_notice values(write_notice_seq.nextval,'공지사항 테스트48', '공지사항 테스트48', sysdate);
insert into write_notice values(write_notice_seq.nextval,'공지사항 테스트49', '공지사항 테스트49', sysdate);

select * from WRITE_NOTICE where wn_no=47;

insert into write_notice values(write_notice_seq.nextval, 'test title', 'test', sysdate);

select * from write_notice;

drop table write_notice cascade constraint;
drop sequence write_notice_seq;