-- 사원관리
CREATE TABLE `worker` (
   `worker_code`   VARCHAR(20)   NOT NULL, -- 사원코드
   `worker_id`     VARCHAR(20)   NOT NULL, -- 아이디
   `worker_name`   VARCHAR(20)   NOT NULL, -- 사원이름
   `worker_birth`  DATE          NOT NULL, -- 사원생년월일
   `worker_sung`   VARCHAR(20)   NOT NULL, -- 사원성별
   `worker_rank`   VARCHAR(20)   NOT NULL, -- 사원직급
   `worker_dpname` VARCHAR(20)   NULL,     -- 부서명
   `worker_yn`     ENUM('y','n') NULL      -- 권한
);

-- 사원관리
ALTER TABLE `worker`
   ADD CONSTRAINT `PK_worker` -- 사원관리 기본키
      PRIMARY KEY (
         `worker_code` -- 사원코드
      );

-- 근태관리
CREATE TABLE `worketime` (
   `worker_code`  VARCHAR(20) NOT NULL, -- 사원코드
   `worker_stime` TIME        NULL,     -- 출근시간
   `worker_etime` TIME        NULL,     -- 퇴근시간
   `worker_date`  DATE        NULL,     -- 출근날짜
   `worker_rank`  VARCHAR(20) NULL      -- 직급
);

-- 사원상세정보
CREATE TABLE `TABLE3` (
   `COL`  <데이터 타입 없음> NULL, -- 상세정보
   `COL2` <데이터 타입 없음> NULL  -- 새 컬럼
);

-- 로그인
CREATE TABLE `TABLE4` (
);

-- 회원가입
CREATE TABLE `member` (
   `member_ID`    VARCHAR(20) NOT NULL, -- 아이디
   `member_pass`  VARCHAR(20) NOT NULL, -- 비밀번호
   `member_name`  VARCHAR(20) NOT NULL, -- 이름
   `member_sung`  VARCHAR(20) NOT NULL, -- 성별
   `member_birth` DATE        NOT NULL, -- 생년월일
   `member_email` VARCHAR(20) NOT NULL  -- 이메일
);

-- 회원가입
ALTER TABLE `member`
   ADD CONSTRAINT `PK_member` -- 회원가입 기본키
      PRIMARY KEY (
         `member_ID` -- 아이디
      );

-- 게시판
CREATE TABLE `board` (
   `board_num`     INT          NOT NULL, -- 게시판번호
   `board_writer`  VARCHAR(20)  NULL,     -- 작성자
   `board_date`    DATE         NULL,     -- 작성날짜
   `board_name`    VARCHAR(20)  NULL,     -- 게시판이름
   `board_coment`  VARCHAR(100) NULL,     -- 게시판내용
   `board_section` INT          NULL      -- 게시판분류
);

-- 게시판
ALTER TABLE `board`
   ADD CONSTRAINT `PK_board` -- 게시판 기본키
      PRIMARY KEY (
         `board_num` -- 게시판번호
      );

-- 건강검진
CREATE TABLE `hospital` (
   `worker_code`    VARCHAR(20) NOT NULL, -- 사원코드
   `hospital_name`  VARCHAR(20) NOT NULL, -- 이름
   `hospital_date`  DATE        NOT NULL, -- 예약날짜
   `hospital_place` VARCHAR(20) NOT NULL  -- 예약병원
);

-- 질문게시판
CREATE TABLE `QA` (
   `qaboard_num`        VARCHAR(20)  NOT NULL, -- 게시판번호
   `qaboard_writer`     VARCHAR(20)  NULL,     -- 작성자
   `qaboard_originno`   INT          NOT NULL, -- 부모번호
   `qaboard_groupord`   INT          NOT NULL, -- 답글순서
   `qaboard_grouplayer` INT          NOT NULL, -- 답글분류
   `qaboard_date`       DATE         NOT NULL, -- 작성날짜
   `qaboard_name`       VARCHAR(20)  NOT NULL, -- 게시판이름
   `qaboard_coment`     VARCHAR(100) NOT NULL, -- 게시판내용
   `qaboard_section`    INT          NOT NULL  -- 게시판분류
);

alter table `QA` change qaboard_originno qa_ref int;
alter table `QA` change qaboard_groupord qa_step int;
alter table `QA` change qaboard_grouplayer qa_lev int;
alter table `QA` change qaboard_num qa_num varchar(20);
alter table `QA` change qaboard_writer qa_name varchar(20);
alter table `QA` change qaboard_date qa_date date;
alter table `QA` change qa_name qa_subject varchar(20);
alter table `QA` change qaboard_coment qa_content varchar(100);
alter table `QA` change qaboard_section qa_section int;

alter table `QA` modify qa_num int;
alter table `QA` modify qa_subject varchar(20) after qa_name;
alter table `QA` modify qa_content varchar(100) after qa_subject;
alter table `QA` modify qa_step int after qa_lev;
alter table qa modify qa_content text;

alter table qa add qa_pass varchar(15) after qa_name;
alter table qa add qa_file varchar(50) after qa_content;

desc qa;

-- 질문게시판
ALTER TABLE `QA`
   ADD CONSTRAINT `PK_QA` -- 질문게시판 기본키
      PRIMARY KEY (
         `qaboard_num` -- 게시판번호
      );

-- 일정관리
CREATE TABLE `scaduler` (
   `scadule_name` VARCHAR(20) NULL, -- 일정명
   `COL2`         DATE        NULL, -- 시작날짜
   `COL3`         DATE        NULL  -- 종료날짜
);

-- 일정관리2
CREATE TABLE `TABLE2` (
);

-- 일정관리3
CREATE TABLE `TABLE5` (
);

-- 회의실예약
CREATE TABLE `meeting` (
   `meeting_num`      VARCHAR(20)  NOT NULL, -- 예약번호
   `meetingroom_code` VARCHAR(20)  NOT NULL, -- 회의실코드
   `meeting_writer`   VARCHAR(20)  NOT NULL, -- 예약자
   `meeting_stime`    DATETIME     NOT NULL, -- 시작시간
   `meeting_etime`    DATETIME     NOT NULL, -- 종료시간
   `meeting_title`    VARCHAR(20)  NOT NULL  -- 회의주제
);

-- 회의실예약
ALTER TABLE `meeting`
   ADD CONSTRAINT `PK_meeting` -- 회의실예약 기본키
      PRIMARY KEY (
         `meeting_num` -- 예약번호
      );

-- 회의실
CREATE TABLE `meetingroom` (
   `meetingroom_code`  VARCHAR(20)  NOT NULL, -- 회의실코드
   `meetringroom_name` VARCHAR(20)  NULL      -- 회의실이름
);

-- 회의실
ALTER TABLE `meetingroom`
   ADD CONSTRAINT `PK_meetingroom` -- 회의실 기본키
      PRIMARY KEY (
         `meetingroom_code` -- 회의실코드
      );

-- 전자결제
CREATE TABLE `pay` (
   `pay_code`    VARCHAR(20)   NOT NULL, -- 결제코드
   `pay_writer`  VARCHAR(20)   NOT NULL, -- 작성자
   `pay_title`   VARCHAR(20)   NULL,     -- 결제제목
   `pay_content` VARCHAR(100)  NULL,     -- 결제내용
   `pay_file`    VARCHAR(50)   NULL,     -- 첨부파일
   `pay_admin`   VARCHAR(20)   NULL,     -- 결재자
   `pay_yn`      ENUM('y','n') NULL      -- 승인여부
);

-- 전자결제
ALTER TABLE `pay`
   ADD CONSTRAINT `PK_pay` -- 전자결제 기본키
      PRIMARY KEY (
         `pay_code` -- 결제코드
      );

-- 권한관리
CREATE TABLE `power` (
   `power_id`    VARCHAR(20)   NOT NULL, -- 권한아이디
   `worker_code` VARCHAR(20)   NULL,     -- 사원코드
   `power_yn`    ENUM('y','n') NULL      -- 권한여부
);

-- 권한관리
ALTER TABLE `power`
   ADD CONSTRAINT `PK_power` -- 권한관리 기본키
      PRIMARY KEY (
         `power_id` -- 권한아이디
      );

-- 쪽지
CREATE TABLE `message` (
   `message_writer`  VARCHAR(20)  NULL, -- 발신자
   `message_looker`  VARCHAR(20)  NULL, -- 수신자
   `message_title`   VARCHAR(20)  NULL, -- 제목
   `message_content` VARCHAR(100) NULL, -- 내용
   `message_date`    DATE         NULL  -- 보낸시간
);

-- 근태관리
CREATE TABLE `atd` (
   `COL`  <데이터 타입 없음> NULL, -- 새 컬럼
   `COL2` <데이터 타입 없음> NULL, -- 새 컬럼2
   `COL3` <데이터 타입 없음> NULL, -- 새 컬럼3
   `COL4` <데이터 타입 없음> NULL  -- 새 컬럼4
);

-- 새 테이블
CREATE TABLE `TABLE` (
);

-- 채팅방
CREATE TABLE `TABLE6` (
   `COL`  <데이터 타입 없음> NULL, -- 미발현
   `COL2` <데이터 타입 없음> NULL, -- 새 컬럼2
   `COL3` <데이터 타입 없음> NULL, -- 새 컬럼3
   `COL4` <데이터 타입 없음> NULL  -- 새 컬럼4
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
show tables;
      
      
-- 질문게시판
ALTER TABLE `QA`
   ADD CONSTRAINT `FK_worker_TO_QA` -- 사원관리 -> 질문게시판
      FOREIGN KEY (
         `qaboard_writer` -- 작성자
      )
      REFERENCES `worker` ( -- 사원관리
         `worker_code` -- 사원코드
      );

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

      show tables;
