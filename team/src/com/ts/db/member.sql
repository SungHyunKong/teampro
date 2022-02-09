create table test(
	num int primary key auto_increment,
	id varchar(20) ,
	pass varchar(20) not null,
	name varchar(30) not null,
	age int not null,
	email varchar(30) not null,
	phone varchar(30) not null,
	unique key(id)
)

drop table member;

drop table test;

show tables;
select * from test; 

insert into test(id,pass,name, age,email,phone) 
values('admin','admin','관리자',25,'dj7502@daum.net','010-1111-1111');

delete from member;

update member set age=35, phone='010-1111-2222' where id='admin';

show tables;

CREATE TABLE worker1 (
	`worker_code`   VARCHAR(20)   NOT NULL, -- 사원코드
	`worker_id`     VARCHAR(20)   NOT NULL, -- 아이디
	`worker_name`   VARCHAR(20)   NOT NULL, -- 사원이름
	`worker_birth`  DATE          NOT NULL, -- 사원생년월일
	`worker_sung`   VARCHAR(20)   NOT NULL, -- 사원성별
	`worker_rank`   VARCHAR(20)   NOT NULL, -- 사원직급
	`worker_dpname` VARCHAR(20)   NULL,     -- 부서명
	`worker_yn`     ENUM('y','n') NULL      -- 권한
);

