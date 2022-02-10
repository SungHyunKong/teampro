-- 회원
CREATE TABLE `member` (
	`id`     varchar(20) NOT NULL COMMENT '아이디', -- 아이디
	`pw`     varchar(20) NULL     COMMENT '비번', -- 비번
	`name`   VARCHAR(20) NULL     COMMENT '이름', -- 이름
	`birth`  VARCHAR(20) NULL     COMMENT '생년월일', -- 생년월일
	`gender` VARCHAR(20) NULL     COMMENT '성별', -- 성별
	`email`  VARCHAR(20) NULL     COMMENT '이메일', -- 이메일
	`tel`    VARCHAR(20) NULL     COMMENT '휴대전화' -- 휴대전화
)
COMMENT '회원';

-- 회원
ALTER TABLE `member`
	ADD CONSTRAINT `PK_member` -- 회원 기본키
		PRIMARY KEY (
			`id` -- 아이디
		);
		
		
select * from member;