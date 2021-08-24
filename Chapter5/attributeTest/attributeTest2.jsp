<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute Test</title>
</head>
<body>
	<h2>영역과 속성테스트-2</h2>
	<%
		//request 객체를 통해 넘어오는 파라미터값 중 한글이 있으므로 한글 처리를 위한 코드 삽입
		request.setCharacterEncoding("UTF-8");
		
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		
		//email, address, tel 값을 session영역의 속성으로 공유하기 위해 설정
		//세션이 유지되는동안 유효함.(같은 웹브라우저 내에서 속성을 공유 )
		session.setAttribute("email", email);
		session.setAttribute("address", address);
		session.setAttribute("tel", tel);
		
		//application 영역에 공유되어있는 name의 속성값을 얻어와 출력
		String name = (String)application.getAttribute("name");
	%>
	<h3><%=name %>님의 정보가 모두 저장되었습니다.</h3>
	<a href="attributeTest3.jsp">확인하러 가기</a>
	
</body>
</html>