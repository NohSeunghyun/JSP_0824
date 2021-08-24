<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>1부터 100까지의 합은</h2>
<%
	int i, hap=0;
	for (i = 1 ; i <= 100 ; i++) {
		hap+=i;
	}
	out.print(hap+"입니다.<br>");
%>
<!-- 표현식 사용 -->
<%=hap%>입니다.