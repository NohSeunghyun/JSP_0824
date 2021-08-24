<!-- <실행 결과 정리>
1.session 내장객체는 같은 브라우저에서만 공유가능
다른 브라우저에서는 접근 불가하여 null이 출력됨

브라우저를 종료하면 session영역은 소멸되어 속성값들은 null로 출력된다.

즉, session 유효범위 : 같은 브라우저에서만 공유
    session 소멸 : 브라우저 종료하면 소멸됨
       
2.application 내장객체는 다른 브라우저에서도 공유가능

서버를 중지시키면 application영역은 소멸되어 null로 출력되거나 서버가 중지되었으므로 접속불가

즉, application 유효범위 : 모든 브라우저에서 공유
	application 소멸 : 서버 중지(해당 Tomcat Server stop)하면 소멸됨
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	session.setAttribute("name", "김유신");
	application.setAttribute("address", "대구시 달서구");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장객체 유효범위</title>
</head>
<body>
	<h1>이름과 주소를 저장합니다.</h1>
	<a href="appTest2.jsp">두번째 웹 페이지로 이동</a>
</body>
</html>