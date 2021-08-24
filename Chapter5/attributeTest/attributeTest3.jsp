<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute Test</title>
</head>
<body>
	<h2>영역과 속성 테스트-3</h2>
	<table border="1">
		<tr>
			<td colspan="2">Application 영역에 저장된 내용들</td>
		</tr>
		<%
			Enumeration<String> app = application.getAttributeNames();
			while(app.hasMoreElements()) {
				String appAttributeName = app.nextElement();
				Object appAttributeValue = application.getAttribute(appAttributeName);
				if (appAttributeName == "name" || appAttributeName == "id") {
		%>
		<tr>
			<td><%=appAttributeName %></td>
			<td><%=appAttributeValue %></td>
		</tr>
		<%
				}
			}
		%>
		<hr>
	</table>
	<table border="1">
		<tr>
			<td colspan="2">Session 영역에 저장된 내용들</td>
		</tr>
		<%
			Enumeration<String> sess = session.getAttributeNames();
			while(sess.hasMoreElements()) {
				String sessAttributeName = sess.nextElement();
				String sessAttributeValue = (String)session.getAttribute(sessAttributeName);
		%>
		<tr>
			<td><%=sessAttributeName %></td>
			<td><%=sessAttributeValue %></td>
			<!-- 위 코드대신%=session.getAttribute(attributeName)%으로 써도됨 -->
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>