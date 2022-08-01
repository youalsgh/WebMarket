create database WebMarketDB;
use WebMarketDB;
show tables;

create table if not exists member (
	id varchar(30) not null,
    password varchar(10) not null,
    name varchar(10) not null,
    gender varchar(4),
    birth varchar(10),
    mail varchar(30),
    phone varchar(20),
    address varchar(90),
    regist_day varchar(200),
    primary key(id)
)default charset=utf8mb4;

select * from member;

insert into member values('rlaalsgh', '1234', '김민호', '남', '960919', 'youalsgh@naver.com', '01033822381', '창원시 마산회원구', '220622');