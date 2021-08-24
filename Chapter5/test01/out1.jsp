<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 입력창</title>
</head>
<body>
	<!-- 입력받은 이름과 나이를 out2.jsp로 전송 -->
	<form action="out2.jsp" method="post"> <!-- 보안을 위해 post방식으로 전송 -->
		이름 : <input type="text" name="name"><br>
		나이 : <input type="text" name="age"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>