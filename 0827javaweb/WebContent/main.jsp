<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포함하는 페이지</title>
</head>
<body>
<!-- sub.jsp 파일의 결과가 main.jsp 파일에 포함이 되는데, 
불필요한 태그가 중복으로 만들어지므로 
불필요한 태그를 제거했다. 페이지 소스 보기로 확인가능.-->
	<p>jsp include는 다른 페이지의 수행 결과를 포함하는 페이지다.</p>
	<jsp:include page="sub.jsp" flush="false">
		<jsp:param name="data" value="데이터"/>
	</jsp:include>
</body>
</html>