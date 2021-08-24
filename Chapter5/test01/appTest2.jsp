<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8"); // 한글깨짐방지 post방식은 반드시 넣어야하고 get방식은 생략 가능하지만 항상 넣도록 연습
	
	String name = (String)session.getAttribute("name");
	String address = (String)application.getAttribute("address");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장객체 유효범위</title>
</head>
<body>
	이름은 <%=name%> 입니다.<br>
	주소는 <%=address %> 입니다.
</body>
</html>