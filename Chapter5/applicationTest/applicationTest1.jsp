<!-- JSP책 199p 
1-6 application 객체
해당 웹 애플리케이션의 실행환경을 제공하는 서버와 서버 측 자원에 대한 정보를 제공하는 메소드들을 제공
Application은 각 웹 애플리케이션 당 오직 하나만의 객체만 생성되므로
해당 웹 애플리케이션 전체영역에서 자원을 공유해야할 때(방문자 수 등을 통계를 다룰 때)주로 사용 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Test</title>
</head>
<body>
	<h2>application 테스트</h2>
	<table border="1">
		<tr>
			<td>JSP 버전</td><!-- 정확히는 서블릿API 버전임 -->
			<td><%=application.getMajorVersion() %>.<%=application.getMinorVersion() %></td>
		</tr>
		<tr>
			<td>컨테이너 정보</td>
			<td><%=application.getServerInfo() %></td>
		</tr>
		<tr>
			<td>웹 애플리케이션의 실제 파일시스템 경로</td>
			<td><%=application.getRealPath("/") %></td>
		</tr>
	</table>
</body>
</html>