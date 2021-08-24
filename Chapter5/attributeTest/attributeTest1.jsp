<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute Test</title>
</head>
<body>
	<h2>영역과 속성 테스트-1</h2>
	<%
		//request 객체를 통해 넘어오는 파라미터값 중 한글이 있으므로 한글 처리를 위한 코드 삽입
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		
		if (name == "" || id == "") {
			out.print("값이 비어있습니다!!");
		} else {
		
			//name과 id값을 application 영역에 속성을 공유하기 위해 설정함(=계속 사용하기위해)
			application.setAttribute("name", name);
			application.setAttribute("id", id);
	%>
		<h3>
		<%=name %>님 반갑습니다.
		<%=name %>님의 아이디는 <%=id %>입니다.
		</h3>
	<form action="attributeTest2.jsp" method="post">
		<table border="1">
			<tr>
				<td colspan="2">Session 영역에 저장할 내용들</td>
			</tr>
			<tr>
				<td>e-mail 주소</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>집 주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>	
	<%
		}
	%>
</body>
</html>