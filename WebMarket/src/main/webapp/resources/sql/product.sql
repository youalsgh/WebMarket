create database WebMarketDB;
use WebMarketDB;
show tables;

create table if not exists product(
	p_id varchar(10) not null,
    p_name varchar(10),
    p_unitPrice integer,
    p_description text,
    p_category varchar(20),
    p_manufacturer varchar(20),
    p_unitsInStock long,
    p_condition varchar(20),
    p_fileName varchar(20),
    primary key(p_id)
)default charset=utf8mb4;

select * from product;

insert into product values('P1234', 'iPhone 6s', '800000', '1334X750 Retina 
HD display, 8-megapixel iSight Camera', 'Smart Phone', 'Apple', 1000, 'new', 'P1234.png');
insert into product values('P1235', 'LG PC gram', '1500000', '3.3-inch,IPS 
LED display, 5rd Generation Intel 
Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png');
insert into product values('P1236', 'Galaxy Tab S', '900000', '3.3-inch,
212.8*125.6*6.6mm, Super AMOLED 
display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

alter table product change column p_name p_name varchar(20);