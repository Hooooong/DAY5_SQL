SQL 기본 문법
=======================================================
> [_SQL_](https://ko.wikipedia.org/wiki/SQL)란 SQL( Structured Query Language, 구조화 질의어 )는 관계형 데이터베이스 관리 시스템(RDBMS)의 데이터를 관리하기 위해 설계된 특수 목적의 프로그래밍 언어이다. 관계형 데이터베이스 관리 시스템에서 자료의 검색과 관리, 데이터베이스 스키마 생성과 수정, 데이터베이스 객체 접근 조정 관리를 위해 고안되었다. 많은 수의 데이터베이스 관련 프로그램들이 SQL을 표준으로 채택하고 있다.

데이터베이스 언어 SQL 문법의 종류는 다음 세 가지로 대별된다.

- 데이터 정의 언어 (DDL : Data Definition Language)

  > 데이터베이스의 스키마 객체를 생성(CREATE),변경(ALTER), 제거(DROP) 하거나 권한의 부여나 박탈(GRANT, REVOKE), 주석(COMMENT),자료의 버림(TRUNCATE) 등을 수행하는 문장의 집단을 의미한다.<br>각 문장은 CREATE, ALTER, DROP, TRUNCATE, GRANT, REVOKE, COMMENT 등으로 시작한다. 이 밖에도 많은 종류의 DDL이 존재한다. 그러나 PL/SQL 블록에서는 DDL을 사용할 수 없다.

- 데이터 조작 언어 (DML : Data Manipulation Language)

  > 스키마 객체의 데이터를 입력(INSERT), 수정(UPDATE), 조회(SELECT), 삭제(DELETE)하거나 테이블에 잠금을 설정하거나 (LOCK TABLE), SQL문의 처리의 절차에 대한 정보를 얻거나 (EXPLAIN PLAN), PL/SQL 모듈을 호출하는 작업(CALL)의 집단이다. <br> 각 문장은 INSERT, UPDATE, DELETE, SELECT, LOCK TABLE, EXPLAIN PLAN, CALL 등으로 시작된다. PL/SQL의 모듈에서 사용할 수 없는 DML로서는 EXPLAIN PLAN과 CALL이 있다.

- 데이터 제어 언어 (DCL : Data Control Language)

  > 트랜잭션의 성격을 제어하는 것으로서 SET TRANSACTION, COMMIT, ROLLBACK, SAVEPOINT와 같은 종류가 있다. PL/SQL 모듈에서는 DCL을 사용할 수 있고 DCL을 이용하여 모듈의 트랜잭션을 제어 할 수 있다.

### 1. 테이블 생성
>CRETAE TABLE 테이블명 (<br>
>	`칼럼이름 1` 칼럼타입 옵션1 옵션2,<br>
>	`칼럼이름 2` 칼럼타입,<br>
>	`칼럼이름 3` 칼럼타입
>);

```SQL
CREATE TABLE memo (
	`no` int primary key not null auto_increment,
	`name` varchar(100),
	`content` text,
	`datetime` datetime
);
```

### 2. 데이터 삽입
> INSERT INTO 테이블명(칼럼명...)<br>
> VALUES( 값 ...);

```SQL
INSERT INTO memo(name, content, datetime)
VALUES('이흥기', '안녕하세요', now());
```

### 3. 데이터 조회
> SELECT 조회할 칼럼명...<br>
> FROM 테이블명<br>
> WHERE 조건...

```SQL
SELECT *
FROM memo
WHERE no = 3
AND name LIKE '%흥%'
```

### 4. 데이터 수정
> UPDATE 테이블명<br>
> SET 변경할칼럼1 = '변경값', 변경할칼럼2 = '변경값'<br>
> WHERE 조건절...;

```SQL
UPDATE memo
SET name = '원채은', content ='수정된내용'
WHERE no= 1;
```

### 5. 데이터 삭제
> DELETE FROM 테이블명<br>
> WHERE 조건절;

```SQL
DELETE FROM memo
WHERE content LIKE '%안녕';
```
