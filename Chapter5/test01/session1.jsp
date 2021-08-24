<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 내장 객체 유효범위</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8"); // 한글깨짐방지 post방식은 반드시 넣어야하고 get방식은 생략 가능하지만 항상 넣도록 연습
	
	//JSP에서는 자동으로 세션객체를 생성해주므로 굳이 getSession()를 호출해서 세션을 얻을 필요없다.
	String name = (String)session.getAttribute("name");

	session.setAttribute("address", "대구시 북구");
%>
	이름은 <%=name %> 입니다.<br>
	<a href="session2.jsp">두번째 페이지로 이동</a>
</body>
</html>