<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String)request.getAttribute("name");
	String address = (String)request.getAttribute("address");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체 테스트</title>
</head>
<body>
	<h3>이름은 <%=name %> 입니다.</h3>
	<h3>주소는 <%=address %> 입니다.</h3>
</body>
</html>