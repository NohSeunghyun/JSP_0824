<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute Test</title>
</head>
<body>
<%
//★주의 : page영역은 page내장객체가 아닌 pageContext내장객체를 통해서만 접근가능하다.
//page영역 유효범위 : 같은 페이지내에서만 속성 공유가능
pageContext.setAttribute("pageScope", "pageValue");
//request영역 유효범위 : forward 또는 include를 이용하는 경우 여러개의 페이지에서도 요청정보가
//					 계속 유지되므로 request영역의 속성을 여러 페이지에서 공유가능
request.setAttribute("requestScope", "requestValue");
%>
<!-- 공유한 속성값들 출력 : 같은페이지 안이므로 둘다 속성값들 제대로 출력됨 -->
pageValue = <%=pageContext.getAttribute("pageScope") %> <br>
requestValue = <%=request.getAttribute("requestScope") %>
</body>
</html>