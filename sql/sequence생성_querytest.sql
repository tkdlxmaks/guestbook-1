drop sequence seq_guestbook;
create sequence seq_guestbook start with 1 increment by 1;

desc guestbook;

insert into guestbook values(seq_guestbook.nextval, '안대혁', '1234', 'ㅎㅇ~', sysdate);
insert into guestbook values(seq_guestbook.nextval, '둘리', '1234', '호이~', sysdate);
insert into guestbook values(seq_guestbook.nextval, '마이콜', '1234', '라면은 구공탄에~~', sysdate);

commit;
select * from guestbook;

