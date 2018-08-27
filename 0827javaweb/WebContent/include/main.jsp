<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소스코드 포함하기</title>
</head>
<body>
	<%
		int num = 1000;
	%>
	<!-- includee.jspf 파일을 포함하기, 동일한 폴더에 있으므로 파일 이름만 써주면 된다. -->
	<%@include file="includee.jspf" %>
	<!-- includee.jspf 파일에 msg라는 변수가 있으므로, 가져와서 사용할 수 있다. -->
	<div><%=msg %></div>
</body>
</html>