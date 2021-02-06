# pymysql
파이썬의 pymysql 모듈을 사용하면 mysql을 편리하게 작업할 수 있다.  
모듈은 $ pip install PyMySQL 명령어로 설치가 가능하다.  
## pymysql 패턴
pymysql은 다음과 같은 절차로 사용할 수 있다.  
```python
### 1. 라이브러리 가져오기
import pymysql

### 2. mysql서버에 접속하기
db = pymysql.connect(host='localhost', port=3306, user='root', passwd=비밀번호, db=데이터베이스명, charset='utf8')

### 3. 커서 가져오기
cursor = db.cursor()

### 4. SQL 구문 만들기
sql = ''' 실행할 명령어 (create, alter, insert, select, update, delete 등) '''

### 5. SQL 구문 실행하기
cursor.execute(sql)

### 6. mysql서버에 변경사항 저장하기
db.commit()

### 7. mysql서버 연결 종료하기
db.close()
```
### 데이터 조회하기 (select문)
mysql 서버로부터 데이터를 가져올 때는 fetch 메소드를 사용하는데, fetch 메소드는 3가지의 사용방법이 있다.  
(1) fetchall() : 모든 행 가져오기  
(2) fetchmany(size=10) : 10개의 행 가져오기 (size를 통해 행의 수를 조절할 수 있음)  
(3) fetchone() : 하나의 행 가져오기  