# MySQL 명령어
## Data Definition Language (DDL)
### Database
1. 데이터베이스 생성  
$ create database 데이터베이스명;  
2. 데이터베이스 목록 조회  
$ show databases;  
3. 데이터베이스 사용  
$ use 데이터베이스명;  
4. 데이터베이스 삭제  
$ drop database 데이터베이스명;  
### Table
1. 테이블 생성  
$ create table 테이블명 (컬럼명 데이터형, 컬럼명 데이터형, ... , primary key(컬럼명));  
2. 테이블 조회  
$ show tables;  
$ desc 테이블명;  
3. 테이블 삭제  
$ drop table 테이블명;  
4. 테이블 구조 수정  
- 새로운 컬럼 추가  
$ alter table 테이블명 add column 추가할컬럼명 추가할컬럼데이터형;  
- 컬럼 데이터형 변경  
$ alter table 테이블명 modify column 변경할컬럼명 변경할컬럼데이터형;  
- 컬럼 이름 변경  
$ alter table 테이블명 change column 기존컬럼명 변경할컬럼명 변경할컬럼데이터형;  
- 컬럼 삭제  
$ alter table 테이블명 drop column 삭제할컬럼명;  
## Data Manipulation Language (DML)
### CRUD (Create, Read, Update, Delete)
1. 데이터 생성 (create)  
- 전체 컬럼에 대응하는 값을 모두 넣기  
$ insert into 테이블명 values(값1, 값2, ...);  
- 특정 컬럼에 대응하는 값만 넣기  
$ insert into 테이블명 (컬럼1, 컬럼2, ...) values(값1, 값2, ...);  
2. 데이터 읽기 (read)  
- 전체 컬럼의 데이터 모두 읽기  
$ select * from 테이블명;  
- 특정 컬럼의 데이터만 읽기  
$ select 컬럼1, 컬럼2, ... from 테이블명;  
- 특정 컬럼의 데이터를 검색하면서 컬럼명 표시는 다르게 하기  
$ select 컬럼1 as 바꿀컬럼명, 컬럼2 as 바꿀컬럼명 from 테이블명;  
- 데이터 정렬해서 읽기 (오름차순)  
$ select * from 테이블명 order by 정렬할기준컬럼명 asc;  
- 데이터 정렬해서 읽기 (내림차순)  
$ select * from 테이블명 order by 정렬할기준컬럼명 desc;  
- 조건에 맞는 데이터만 검색하기 (>, <, =)  
$ select * from 테이블명 where 컬럼명 = '값';  
- 조건에 맞는 데이터만 검색하기 (and, or)  
$ select * from 테이블명 where (컬럼명 = '값') or (컬럼명 > '값');  
- 조건에 맞는 데이터만 검색하기 (like)  
$ select * from 테이블명 where 컬럼명 like '%찾고자하는값%';  
- 결과에서 일부 데이터만 가져오기  
$ select * from 테이블명 limit 10;  
$ select * from 테이블명 limit 100, 10;  
3. 데이터 수정 (update)
- 특정 조건에 맞는 데이터만 수정하기  
$ update 테이블명 set 수정할컬럼명 = '수정할값' where 특정컬럼 = '값';  
4. 데이터 삭제 (delete)
- 특정 조건에 맞는 데이터만 삭제하기  
$ delete from 테이블명 where 특정컬럼 = '값';  
- 모든 데이터를 삭제하기  
$ delete from 테이블명;  