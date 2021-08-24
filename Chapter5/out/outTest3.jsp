<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Out Test</title>
</head>
<body>
	<h2>Out 테스트</h2>
	<table border="1">
		<tr>
			<!-- 4장의 jspDrirective.jsp참조하기
				 isAutoFlush() : page지시어의 autoFlush 속성으로 지정된 값을 리턴한다.
								  출력버퍼가 다 채워지면 클라이언트로 전송되도록 지정되어 있으면 :true(기본값)를 리턴
								  출력버퍼가 다 채워지면 예외발생 하도록 지정되어 있으면 :false를 리턴-->
			<td>autoFlush 여부</td>
			<td><%=out.isAutoFlush() %></td>
		</tr>
		<tr>
			<td>출력 버퍼의 크기</td>
			<td><%=out.getBufferSize() %></td>
		</tr>
		<tr>
			<td>출력 버퍼의 남은 양</td>
			<td><%=out.getRemaining() %></td>
		</tr>
	</table>
</body>
</html>