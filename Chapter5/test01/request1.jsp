<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setAttribute("name", "홍길동");
	request.setAttribute("address", "대구시 수성구");
%>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체 테스트</title>
</head>
<body>
	<%-- <%
	/*
	request 객체를 request2.jsp로 포워딩함(JSP책 143p [서블릿 포워딩 방법 중 1.디스패치 방식]참조)
	1.디스패치 방식 : 주소줄 안바뀜(=기존요청=request 내장객체 공유)
	*/
	RequestDispatcher dispatcher = request.getRequestDispatcher("request2.jsp");
	dispatcher.forward(request, response);
	%> --%>
	
	<!-- 위 자바코드 대신 액션태그 사용 -->
	<jsp:forward page="request2.jsp"/>
</body>
</html>