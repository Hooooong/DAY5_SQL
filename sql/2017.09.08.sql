# 1. 테이블 생성
#
# CRETAE TABLE 테이블명 (
#	`칼럼이름 1` 칼럼타입 옵션1 옵션2,
#	`칼럼이름 2` 칼럼타입,
#	`칼럼이름 3` 칼럼타입
#);

create table memo (
	`no` int primary key not null auto_increment,
    `name` varchar(100),
    `content` text,
    `datetime` datetime
);

# 2. 데이터 삽입
#
# INSERT INTO 테이블명(칼럼명...) VALUES( 값 ...);
#

insert into memo(name, content, datetime) values('이흥기', '안녕하세요', now());
insert into memo(name, content, datetime) values('김철', '안녕하세요2', now());
insert into memo(name, content, datetime) values('원채은', '안녕하세요3', now());
insert into memo(name, content, datetime) values('임수빈', '안녕하세요4', now());
insert into memo(name, content, datetime) values('남용환', '안녕하세요5', now());


# 3. 데이터 조회
#
# SELECT 조회할 칼럼명... 
# FROM 테이블명 
# WHERE 조건...
#

SELECT * FROM memo;


# 4. 데이터 수정
#
# UPDATE 테이블명 
# SET 변경할칼럼1 = '변경값', 변경할칼럼2 = '변경값'
# WHERE 조건절...;
#

update memo set content ='수정된내용' where no= 1;

# 5. 데이터 삭제
#
# DELETE FROM 테이블명 
# WHERE 조건절;
#