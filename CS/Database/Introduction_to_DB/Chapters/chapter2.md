# Chapter 2. 데이터베이스 관리 시스템

## 데이터베이스 관리 시스템의 등장 배경
과거에는 데이터를 관리하기 위해 파일 시스템이라는 소프트웨어를 이용하였다.  
파일 시스템은 데이터를 파일로 관리할 수 있도록 파일을 생성, 삭제, 수정, 검색하는 기능을 제공하며, 운영체제와 함께 설치된다.  
파일 시스템은 응용 프로그램별로 필요한 데이터를 별도의 파일로 관리한다.  

### 파일 시스템의 문제점
1. 같은 내용의 데이터가 여러 파일에 중복 저장된다.
    - 파일 시스템에서는 응용 프로그램별로 파일을 유지하므로 같은 데이터가 여러 파일에 저장될 수 있다.
2. 응용 프로그램이 데이터 파일에 종속적이다.
    - 응용 프로그램은 파일에 직접 접근하여 데이터를 처리해야 하므로 사용하는 파일의 데이터를 구성하는 방법이나 물리적인 저장 구조에 맞게 작성되어야 한다.
3. 데이터 파일에 대한 동시 공유, 보안, 회복 기능이 부족하다.
    - 일반 파일 시스템에서는 응용 프로그램 하나가 사용 중인 파일을 다른 응용 프로그램이 접근하여 사용할 수 있는 동시 공유 기능을 제공하지 않는다. 
    - 파일 시스템에서는 사용자에게 보통 파일 단위로 읽기, 수정, 실행 권한을 부여하는 방식으로 데이터 접근을 통제한다. 하지만 데이터 보안에 대한 요구가 더욱 세분화되고 있어 파일 안의 레코드나 필드 같은 더 작은 단위에 대한 접근 통제와 더 구체적인 권한 부여가 가능해야 한다.
    - 파일 시스템에서 응용 프로그램이 파일을 사용하는 도중에 장애가 발생하면 데이터를 일관된 상태로 회복하기 어렵다. 
4. 응용 프로그램을 개발하기 쉽지 않다.
    - 파일 시스템에서는 파일에 접근하여 데이터를 관리하는 모든 작업을 응용 프로그램이 담당해야 하기 때문에 사용자 요구에 맞는 응용 프로그램을 개발하는 데 어려움이 많다. 

## 데이터베이스 관리 시스템의 정의
데이터베이스 관리 시스템(DBMS)은 파일 시스템의 **데이터 중복**과 **데이터 종속** 문제를 해결하기 위해 제시된 소프트웨어다. 데이터베이스 관리 시스템은 조직에 필요한 데이터를 데이터베이스에 통합하여 저장하고 이에 대한 관리를 집중적으로 담당한다.  
데이터베이스 관리 시스템은 응용 프로그램을 대신하여 데이터베이스에 들어 있는 데이터를 삽입, 삭제, 수정, 검색하고 모든 응용 프로그램이 데이터베이스를 공유할 수 있게 한다.  

### 데이터베이스 관리 시스템의 주요 기능
1. 정의 기능 : 데이터베이스 구조를 정의하거나 수정할 수 있다.
2. 조작 기능 : 데이터를 삽입, 삭제, 수정, 검색하는 연산을 할 수 있다.
3. 제어 기능 : 데이터를 항상 정확하고 안전하게 유지할 수 있다.

## 데이터베이스 관리 시스템의 장단점

### 데이터베이스 관리 시스템의 장점
1. 데이터 중복을 통제할 수 있다.
2. 데이터 독립성이 확보된다. 
3. 데이터를 동시 굥유할 수 있다.
4. 데이터 보안이 향상된다.
5. 데이터 무결성을 유지할 수 있다.
6. 표준화할 수 있다.
7. 장애 발생 시 회복이 가능하다.
8. 응용 프로그램 개발 비용이 줄어든다.

### 데이터베이스 관리 시스템의 단점
1. 비용이 많이 든다.
2. 백업과 회복 방법이 복잡하다.
3. 중앙 집중 관리로 인한 취약점이 존재한다.

## 데이터베이스 관리 시스템의 발전 과정
1. 1세대 데이터베이스 관리 시스템 : 네트워크, 계층 DBMS
    - 네트워크 DBMS는 데이터베이스를 노드와 간선을 이용한 그래프 형태로 구성하는 네트워크 데이터 모델을 사용한다.
    - 네트워크 DBMS는 간선을 이용해 데이터 간의 관계를 표현하기 때문에 데이터베이스의 구조가 복잡하고 변경하기 어렵다는 문제가 있다.
    - 대표적인 네트워크 DBMS : IDS
    - 계층 DBMS는 데이터베이스를 트리 형태로 구성하는 계층 데이터 모델을 사용한다.
    - 계층 DBMS는 복잡한 현실 세계의 모습을 부모 자식 관계가 명확한 트리 형태로 표현하기가 힘들고, 구조 변경이 어렵다는 문제가 있다.
    - 대표적인 계층 DBMS : IMS

2. 2세대 데이터베이스 관리 시스템 : 관계 DBMS
    - 관계 DBMS는 데이터베이스를 테이블 형태로 구성하는 관계 데이터 모델을 사용한다. 
    - 관계 데이터 모델은 데이터베이스를 단순하고 이해하기 쉬운 구조로 구성한다는 장점이 있다.
    - 대표적인 관계 DBMS : 오라클, MS SQL 서버, 액세스, 인포믹스, MySQL

3. 3세대 데이터베이스 관리 시스템 : 객체지향, 객체관계 DBMS
    - 객체지향 DBMS는 객체지향 프로그래밍에서 도입한 객체라는 개념을 이용해 데이터베이스를 구성하는 객체지향 데이터 모델을 사용한다. 
    - 객체지향 DBMS는 더 복잡한 응용 분야의 데이터를 관리하려는 사용자 요구를 충족시키기 위해 제안되었다.
    - 대표적인 객체지향 DBMS : 오투, 온투스, 젬스톤
    - 객체관계 DBMS는 데이터 모델에 객체지향 개념을 도입한 객체관계 데이터 모델을 사용한다.
    - 객체관계 DBMS는 쉽게 말해 객체 DBMS와 관계 DBMS의 개념을 통합한 것이다.

4. 4세대 이후 데이터베이스 관리 시스템 : NoSQL, NewSQL DBMS
    - NoSQL DBMS는 관계 DBMS가 강점으로 제시하던 안정성과 일관성 유지를 위한 복잡한 기능을 포기하고, 데이터 구조를 미리 정해두지 않기 때문에 비정형 데이터를 저장하고 처리하는 데 적합하다. 그리고 확장성이 뛰어나 여러 대의 서버 컴퓨터에 데이터를 분산하여 저장하고 처리하는 환경에서 주로 사용한다. 
    - 대표적인 NoSQL DBMS : 몽고디비, H베이스, 카산드라, 레디스, 네오포제이, 오리엔트DB
    - NewSQL DBMS는 안정성과 일관성을 유지하면서도 SQL을 이용해 다양하고 복잡한 데이터 처리를 편리하게 요청할 수 있다. 즉, 관계 DBMS의 장점과 NoSQL의 확장성 및 유연성을 모두 지원한다. 따라서 정형 및 비정형 데이터를 안정적이고 빠르게 처리할 수 있다.
    - 하지만, NewSQL이 관계 DBMS나 NoSQL을 완전히 대신할 것으로 생각한다면 섣부른 판단이다. NewSQL은 시장에 진입한 지 얼마 되지 않았으므로 앞으로 더 쿤 발전이 기대되자만 당분간은 관계 DBMS, NoSQL, NewSQL이 상호 보완하면서 공존할 것으로 예상된다.  
    - 대표적인 NewSQL이 DBMS : 구글 스패너, 볼트DB, 누오 DB