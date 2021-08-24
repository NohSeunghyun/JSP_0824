<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); // 한글깨짐방지.생략불가.Post방식으로 전송받았기 때문에 반드시 적어야함
	
	String name = request.getParameter("name");
	String age = request.getParameter("age"); // 나이를 19세미만이면 미성년자, 이상이면 성인 으로 비교하지 않기때문에 int타입으로 변환할 필요없음
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 출력창</title>
</head>
<body>
	<% 
	if(name != "" || name.length() != 0) { // ||는 or &&는 and // name이 null이 아니거나 name의 length가 0이 아니면 
	%>
		<!-- 이름과 나이를 표현식으로 출력 -->
		<h3><%=name%>, <%=age %></h3>
	<%
	} else {
	%>
		<h3>이름을 입력하세요.</h3>
	<%
	}
	%>
	<hr>
	<%
	if(name != "" || name.length() != 0) {
	%>
		<!-- 이름과 나이를 out 내장객체로 출력 -->
		<h3><%out.print(name); %>, <%out.print(age); %></h3>
	<%
	
	} else {
	%>
		<h3>이름을 입력하세요.</h3>
	<%
	}
	%>
</body>
</html>