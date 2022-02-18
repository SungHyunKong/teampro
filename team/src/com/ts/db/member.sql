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
		
desc worker;
		
select * from worker;
select * from member;

   insert into worker(worker_id,worker_name,worker_birth,worker_sung,worker_rank,worker_dpname,worker_yn) 
    values("hkj","한광진","1998-11-07","남","부장","인사과","y");


insert into member values("sjs","admin1234","심준수","남","1998-09-18","sjs@naver.com");
insert into worker(worker_id,worker_name,worker_birth,worker_sung,worker_rank,worker_dpname,worker_yn) values("hkj","한광진","1998-11-07","남","부장","인사과","y");
  

insert into worker values("hkj","한광진","1998-11-07","남","부장","인사과","y");
insert into worketime values("hkj","admin","한광진","남","1998-11-07","hkj@naver.com");
delete from worker;
desc worker;
show tables;

desc worker;

delete from worketime;


alter table worker modify worker_code INT not null auto_increment;
alter table worker auto_increment=1;

-- 사원관리
-- 회원가입
DROP TABLE IF EXISTS `member` RESTRICT;
DROP TABLE IF EXISTS `worker` RESTRICT;

-- 근태관리
DROP TABLE IF EXISTS `worketime` RESTRICT;


-- 게시판
DROP TABLE IF EXISTS `board` RESTRICT;

-- 건강검진
DROP TABLE IF EXISTS `hospital` RESTRICT;

-- 질문게시판
DROP TABLE IF EXISTS `QA` RESTRICT;

-- 일정관리
DROP TABLE IF EXISTS `scaduler` RESTRICT;

-- 회의실예약
DROP TABLE IF EXISTS `meeting` RESTRICT;

-- 회의실
DROP TABLE IF EXISTS `meetingroom` RESTRICT;

-- 전자결제
DROP TABLE IF EXISTS `pay` RESTRICT;

-- 권한관리
DROP TABLE IF EXISTS `power` RESTRICT;

-- 쪽지
DROP TABLE IF EXISTS `message` RESTRICT;




















-- 사원관리
CREATE TABLE `worker` (
	`worker_code`   INT auto_increment primary key, -- 사원코드
	`worker_id`     VARCHAR(20)   NOT NULL, -- 아이디
	`worker_name`   VARCHAR(20)   NOT NULL, -- 사원이름
	`worker_birth`  DATE          NOT NULL, -- 사원생년월일
	`worker_sung`   VARCHAR(20)   NOT NULL, -- 사원성별
	`worker_rank`   VARCHAR(20)   NOT NULL, -- 사원직급
	`worker_dpname` VARCHAR(20)   NULL,     -- 부서명
	`worker_yn`     ENUM('y','n') NULL      -- 권한
);

-- 근태관리
CREATE TABLE `worketime` (
	`worker_code`  INT auto_increment primary key, -- 사원코드
	`worker_stime` DATETIME    NULL,     -- 출근시간
	`worker_etime` DATETIME    NULL,     -- 퇴근시간
	`worker_date`  DATE        NULL,     -- 출근날짜
	`worker_rank`  VARCHAR(20) NULL      -- 직급
);

-- 회원가입
CREATE TABLE `member` (
	`member_id`    VARCHAR(20) NOT NULL, -- 아이디
	`member_pw`  VARCHAR(20) NOT NULL, -- 비밀번호
	`member_name`  VARCHAR(20) NOT NULL, -- 이름
	`member_birth` varchar(30)  NOT NULL, -- 생년월일
	`member_gender`  VARCHAR(20) NOT NULL, -- 성별
	`member_email` VARCHAR(30) NOT NULL  -- 이메일
);

-- 회원가입
ALTER TABLE `member`
	ADD CONSTRAINT `PK_member` -- 회원가입 기본키
		PRIMARY KEY (
			`member_ID` -- 아이디
		);

-- 게시판
CREATE TABLE `board` (
	`board_num`     INT auto_increment primary key, -- 게시판번호
	`board_writer`  INT          NULL,     -- 작성자
	`board_date`    DATE         NULL,     -- 작성날짜
	`board_name`    VARCHAR(20)  NULL,     -- 게시판이름
	`board_coment`  VARCHAR(100) NULL,     -- 게시판내용
	`board_section` INT          NULL      -- 게시판분류
);

-- 건강검진
CREATE TABLE `hospital` (
	`worker_code`    INT auto_increment primary key, -- 사원코드
	`hospital_name`  VARCHAR(20) NOT NULL, -- 이름
	`hospital_date`  DATE        NOT NULL, -- 예약날짜
	`hospital_place` VARCHAR(20) NOT NULL  -- 예약병원
);

-- 질문게시판
CREATE TABLE `QA` (
	`qa_num` INT auto_increment primary key, -- 게시판번호
	`qa_id`  varchar(20),     -- 작성자
	`qa_subject`  varchar(50), -- 글 제목
	`qa_content`   text, -- 글 내용
	`qa_file` varchar(50), -- 파일
	`qa_re_ref` int, -- 답글로 묶기
	`qa_re_lev` int, -- 들여쓰기
	`qa_re_seq` int, -- 답글 순서
	`qa_readcount` int, -- 조회수
	`qa_date` date      -- 게시글 올린 시간
);

-- 질문게시판

-- 일정관리
CREATE TABLE `scaduler` (
	`scadule_name` VARCHAR(20) NULL, -- 일정명
	`COL2`         DATE        NULL, -- 시작날짜
	`COL3`         DATE        NULL  -- 종료날짜
);

-- 회의실예약
CREATE TABLE `meeting` (
	`meeting_num`      INT auto_increment primary key, -- 예약번호
	`meetingroom_code` INT          NOT NULL, -- 회의실코드
	`meeting_writer`   INT          NOT NULL, -- 예약자
	`meeting_stime`    DATETIME     NOT NULL, -- 시작시간
	`meeting_etime`    DATETIME     NOT NULL, -- 종료시간
	`meeting_title`    VARCHAR(20)  NOT NULL  -- 회의주제
);

-- 회의실예약

-- 회의실
CREATE TABLE `meetingroom` (
	`meetingroom_code`  INT auto_increment primary key, -- 회의실코드
	`meetringroom_name` VARCHAR(20)  NULL      -- 회의실이름
);

-- 전자결제
CREATE TABLE `pay` (
	`pay_code`   INT auto_increment primary key, -- 결제코드
	`pay_writer`  INT           NOT NULL, -- 작성자
	`pay_title`   VARCHAR(20)   NULL,     -- 결제제목
	`pay_content` VARCHAR(100)  NULL,     -- 결제내용
	`pay_file`    VARCHAR(50)   NULL,     -- 첨부파일
	'pay_time'    DATETIME      NULL,     -- 결제신청시간
	`pay_admin`   VARCHAR(20)   NULL,     -- 결재자
	'pay_admintime' DATETIME    NULL,     -- 결재자시간
	`pay_yn`      ENUM('y','n') NULL      -- 승인여부
);

-- 권한관리
CREATE TABLE `power` (
	`power_id`    INT auto_increment primary key, -- 권한아이디
	`worker_code` INT           NULL,     -- 사원코드
	`power_yn`    ENUM('y','n') NULL      -- 권한여부
);

-- 권한관리

-- 쪽지
CREATE TABLE `message` (
	`message_writer`  INT          NULL, -- 발신자
	`message_looker`  INT          NULL, -- 수신자
	`message_title`   VARCHAR(20)  NULL, -- 제목
	`message_content` VARCHAR(100) NULL, -- 내용
	`message_date`    DATE         NULL  -- 보낸시간
);

-- 사원관리
ALTER TABLE `worker`
	ADD CONSTRAINT `FK_member_TO_worker` -- 회원가입 -> 사원관리
		FOREIGN KEY (
			`worker_id` -- 아이디
		)
		REFERENCES `member` ( -- 회원가입
			`member_ID` -- 아이디
		);

-- 근태관리
ALTER TABLE `worketime`
	ADD CONSTRAINT `FK_worker_TO_worketime` -- 사원관리 -> 근태관리
		FOREIGN KEY (
			`worker_code` -- 사원코드
		)
		REFERENCES `worker` ( -- 사원관리
			`worker_code` -- 사원코드
		);

-- 게시판
ALTER TABLE `board`
	ADD CONSTRAINT `FK_worker_TO_board` -- 사원관리 -> 게시판
		FOREIGN KEY (
			`board_writer` -- 작성자
		)
		REFERENCES `worker` ( -- 사원관리
			`worker_code` -- 사원코드
		);

-- 건강검진
ALTER TABLE `hospital`
	ADD CONSTRAINT `FK_worker_TO_hospital` -- 사원관리 -> 건강검진
		FOREIGN KEY (
			`worker_code` -- 사원코드
		)
		REFERENCES `worker` ( -- 사원관리
			`worker_code` -- 사원코드
		);

-- 질문게시판
ALTER TABLE `QA`
	ADD CONSTRAINT `FK_worker_TO_QA` -- 사원관리 -> 질문게시판
		FOREIGN KEY (
			`qa_id` -- 작성자
		)
		REFERENCES `worker` ( -- 사원관리
			`worker_code` -- 사원코드
		);
-- 질문게시판과 회원가입 테이블 외래키 설정
 ALTER TABLE `QA` ADD CONSTRAINT `FK_member_TO_QA` FOREIGN KEY(qa_id) REFERENCES member(member_id);
-- 회의실예약
ALTER TABLE `meeting`
	ADD CONSTRAINT `FK_worker_TO_meeting` -- 사원관리 -> 회의실예약
		FOREIGN KEY (
			`meeting_writer` -- 예약자
		)
		REFERENCES `worker` ( -- 사원관리
			`worker_code` -- 사원코드
		);

-- 회의실예약
ALTER TABLE `meeting`
	ADD CONSTRAINT `FK_meetingroom_TO_meeting` -- 회의실 -> 회의실예약
		FOREIGN KEY (
			`meetingroom_code` -- 회의실코드
		)
		REFERENCES `meetingroom` ( -- 회의실
			`meetingroom_code` -- 회의실코드
		);

-- 전자결제
ALTER TABLE `pay`
	ADD CONSTRAINT `FK_worker_TO_pay` -- 사원관리 -> 전자결제
		FOREIGN KEY (
			`pay_writer` -- 작성자
		)
		REFERENCES `worker` ( -- 사원관리
			`worker_code` -- 사원코드
		);

-- 권한관리
ALTER TABLE `power`
	ADD CONSTRAINT `FK_worker_TO_power` -- 사원관리 -> 권한관리
		FOREIGN KEY (
			`worker_code` -- 사원코드
		)
		REFERENCES `worker` ( -- 사원관리
			`worker_code` -- 사원코드
		);

-- 쪽지
ALTER TABLE `message`
	ADD CONSTRAINT `FK_worker_TO_message` -- 사원관리 -> 쪽지
		FOREIGN KEY (
			`message_writer` -- 발신자
		)
		REFERENCES `worker` ( -- 사원관리
			`worker_code` -- 사원코드
		);

-- 쪽지
ALTER TABLE `message`
	ADD CONSTRAINT `FK_worker_TO_message2` -- 사원관리 -> 쪽지2
		FOREIGN KEY (
			`message_looker` -- 수신자
		)
		REFERENCES `worker` ( -- 사원관리
			`worker_code` -- 사원코드
		);