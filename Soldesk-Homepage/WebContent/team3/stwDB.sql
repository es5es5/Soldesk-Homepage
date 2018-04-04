create table write_notice(
	wn_no number(5) primary key,		
	wn_title varchar2(100 char) not null,
	wn_txt varchar2(200 char) not null,
	wn_date date not null
);
create sequence write_notice_seq;

select * from WRITE_NOTICE where wn_no=47;

insert into write_notice values(write_notice_seq.nextval, 'test title', 'test', sysdate);

select * from write_notice;

drop table write_notice cascade constraint;
drop sequence write_notice_seq;