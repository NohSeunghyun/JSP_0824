<!-- JSP책 204p
1.8 config 객체
JSP페이지가 서블릿 클래스로 변환되어 서블릿 인스턴스가 생성될 때
참조해야할 초기설정 정보들을 저장해놓은 객체

초기설정 정보들은 서블릿당 1개만의 객체가 생성되며
같은 서블릿 인스턴스는 동일한 config객체를 참조한다.
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Enumeration"%>
    <!-- 1.먼저, Enumeration을 import하여 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Config Test</title>
</head>
<body>
	<h2>config 테스트</h2>
	<table border="1">
		<tr>
			<td>초기 파라미터 이름</td>
			<td>초기 파라미터 값</td>
		</tr>
		<%
			// 2.각 초기화 파라미터 이름들을 Enumeration 타입으로 얻어와
			Enumeration<String> e = config.getInitParameterNames();
			while(e.hasMoreElements()) {
				String init_paramName = e.nextElement();
		%>
		<tr>
			<td><%=init_paramName %></td>
			<td><%=config.getInitParameter(init_paramName) %></td>
		</tr>
		<%
			}
		%>
	</table>
	<%=config.getInitParameter("jdbcdriver") %>
</body>
</html>