create table write_notice(
	wn_no number(5) primary key,		
	wn_title varchar2(100 char) not null,
	wn_txt varchar2(200 char) not null,
	wn_date date not null
);
create sequence write_notice_seq;

insert into write_notice values(write_notice_seq.nextval,'�������� �׽�Ʈ40', '�������� �׽�Ʈ40', sysdate);
insert into write_notice values(write_notice_seq.nextval,'�������� �׽�Ʈ41', '�������� �׽�Ʈ41', sysdate);
insert into write_notice values(write_notice_seq.nextval,'�������� �׽�Ʈ42', '�������� �׽�Ʈ42', sysdate);
insert into write_notice values(write_notice_seq.nextval,'�������� �׽�Ʈ43', '�������� �׽�Ʈ43', sysdate);
insert into write_notice values(write_notice_seq.nextval,'�������� �׽�Ʈ44', '�������� �׽�Ʈ44', sysdate);
insert into write_notice values(write_notice_seq.nextval,'�������� �׽�Ʈ45', '�������� �׽�Ʈ45', sysdate);
insert into write_notice values(write_notice_seq.nextval,'�������� �׽�Ʈ46', '�������� �׽�Ʈ46', sysdate);
insert into write_notice values(write_notice_seq.nextval,'�������� �׽�Ʈ47', '�������� �׽�Ʈ47', sysdate);
insert into write_notice values(write_notice_seq.nextval,'�������� �׽�Ʈ48', '�������� �׽�Ʈ48', sysdate);
insert into write_notice values(write_notice_seq.nextval,'�������� �׽�Ʈ49', '�������� �׽�Ʈ49', sysdate);

select * from WRITE_NOTICE where wn_no=47;

insert into write_notice values(write_notice_seq.nextval, 'test title', 'test', sysdate);

select * from write_notice;

drop table write_notice cascade constraint;
drop sequence write_notice_seq;