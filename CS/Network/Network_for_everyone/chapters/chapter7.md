# Chapter 7. 응용 계층 : 애플리케이션에 데이터 전송하기

## Lesson 28. 응용 계층의 역할
- 서비스를 요청하는 측은 클라이언트, 서비스를 제공하는 측은 서버라고 한다.  
- 서버의 애플리케이션은 응용 계층에서 동작한다.  
- 응용 계층은 5계층의 세션 계층과 6계층의 표현 계층을 포한한다.  
- 클라이언트 측 애플리케이션이 서버 측 애플리케이션과 통신하려면 응용 계층의 프로토콜을 사용해야 한다.  
    |프로토콜|내용|
    |:---:|:---:|
    |HTTP|웹 사이트 접속|
    |DNS|이름 해석|
    |FTP|파일 전송|
    |SMTP|메일 송신|
    |POP3|메일 수신|

## Lesson 29. 웹 서버의 구조 (웹 사이트 접속)
- WWW는 HTML, URL, HTTP라는 세 가지 기술이 사용된다.  
- HTML : 웹 페이지에서 문장 구조나 문자를 꾸미는 태그를 사용하여 작성하는 마크업 언어  
- 하이퍼텍스트로 문장이나 이미지를 표시하거나 하이퍼링크를 사용할 수 있다.  
- 클라이언트는 웹 사이트를 보기 위해 서버의 80번 포트를 사용하여 HTTP 통신을 한다. 클라이언트에서 HTTP 요청을 보내고 서버에서 HTTP 응답을 반환한다.  
- 클라이언트가 데이터를 요청할 때는 "GET"이라고 하는 요청 정보, 파일 이름, 버전 등을 서버에 전송한다. 그러면 서버는 응답으로 요청을 정상적으로 처리했다는 "OK"라는 정보를 반환하고 index.html을 클라이언트에게 보낸다.  
- HTTP/1.1버전부터는 keepalive라는 기능이 추가되어 연결을 한 번 수립하면 데이터 교환을 마칠 때까지 유지하고, 데이터 교환을 모두 끝내면 연결을 끊는다.  
- keepalive 기능을 통해 매번 연결 수립과 끊기를 하지 않아도 된다.  
- HTTP/2버전에서는 요청을 보낸 순서대로 응답을 반환하지 않아도 되기 때문에 콘텐츠를 빠르게 표시할 수 있다.  

## Lesson 30. DNS 서버의 구조 (이름 해석)
- DNS : URL을 IP주소로 변환하는 서비스(시스템)  
- IP 주소가 아닌 URL을 용하여 웹 사이트에 접속하도록 돕는 것은 DNS의 이름 해석이라고 한다.  
- 컴퓨터나 네트워크를 식별하기 위해 붙여진 이름을 도메인 이름이라고 한다. 그리고 도메인 이름 앞에 있는 www를 호스트 이름(서버 이름)이라고 한다.  
- 웹 브라우저에 URL을 입력하여 접속하면 DNS 서버는 해당 사이트의 IP 주소를 알려주고 컴퓨터는 그 IP 주소로 서버에 접속한다.  
- 만약 첫 번째 DNS 서버가 도메인의 IP 주소를 모르면 다른 DSN 서버에 IP 주소를 요청한다.  
- DNS 서버는 전 세계에 흩어져 있고 모두 계층적으로 연결되어 있다.  

## Lesson 31. 메일 서버의 구조 (SMTP와 POP3)
- 메일을 보내는 데 사용하는 프로토콜은 SMTP이고, 메일을 받는 데 사용하는 프로토콜은 POP3이다.  
- SMTP는 포트 번호로 25번을 사용하고, POP3는 110번을 사용한다.  
- 목적지 컴퓨터와의 통신을 확인하려면 ping 명령을 이용한다.  
- ping 명령은 ICMP 패킷을 전송하고 패킷에 대한 응답이 제대로 오는지 확인하는 명령이다.  