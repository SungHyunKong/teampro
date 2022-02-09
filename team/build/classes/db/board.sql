-- 상담게시판
CREATE TABLE `q&aBoard` (
	`num`         INT         NOT NULL COMMENT '순번', -- 순번
	`id`          varchar(20) NOT NULL COMMENT '아이디', -- 아이디
	`subject`     VARCHAR(20) NULL     COMMENT '글 제목', -- 글 제목
	`content`     TEXT        NULL     COMMENT '내용', -- 내용
	`regist_day`  varchar(30) NULL     COMMENT '등록일자', -- 등록일자
	`filename`    varchar(50) NULL     COMMENT '파일 이름', -- 파일 이름
	`filesize`    long        NULL     COMMENT '파일 사이즈', -- 파일 사이즈
	`hit`         int         NULL     COMMENT '조회수', -- 조회수
	`group_`      int         NULL     COMMENT '글의 그룹', -- 글의 그룹
	`group_order` int         NULL     COMMENT '글의 순서', -- 글의 순서
	`group_level` int         NULL     COMMENT '글의 레벨' -- 글의 레벨
)default charset=utf8;
COMMENT '상담게시판';

-- 상담게시판
ALTER TABLE `q&aBoard`
	ADD CONSTRAINT `PK_q&aBoard` -- 상담게시판 기본키
		PRIMARY KEY (
			`num` -- 순번
		);

ALTER TABLE `q&aBoard`
	MODIFY COLUMN `num` INT NOT NULL AUTO_INCREMENT COMMENT '순번';

ALTER TABLE `q&aBoard`
	AUTO_INCREMENT = 1;
	
drop table `q&aBoard`;