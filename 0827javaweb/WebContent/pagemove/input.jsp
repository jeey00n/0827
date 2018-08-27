<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 이동-HTML에서 요청</title>
</head>
<body>
	<a href="process.jsp?email=관리자@naver.com&pw=2222">process로 이동</a><br/>
	<form action="process.jsp" id="myform" method="post">
		이메일: <input type="text" name="email"/><br/>
		비밀번호: <input type="password" name="pw"/><br/>
		<input type="submit" value="전송"/>
	</form>
	
	<input type="button" value="location 이용" id="btn1" />
	<input type="button" value="window 이용" id="btn2" />
	<input type="button" value="뒤로가기" id="back" />
	<input type="button" value="새로고침" id="reload" />
	<input type="button" value="폼 데이터 전송" id="formsubmit" />
	<input type="button" value="ajax" id="ajax" />

</body>
<script>
	var btn1 = document.getElementById("btn1")
	var btn2 = document.getElementById("btn2")
	var back = document.getElementById("back")
	var reload = document.getElementById("reload")
	var formsubmit = document.getElementById("formsubmit")
	var ajax = document.getElementById("ajax")
	
	btn1.addEventListener("click", function(e){
		location.href="process.jsp?email=poek"
	})
	btn2.addEventListener("click", function(e){
		window.location="process.jsp"
	})
	back.addEventListener("click", function(e){
		history.back()
	})
	reload.addEventListener("click", function(e){
		location.reload()
	})
	formsubmit.addEventListener("click", function(e){
		document.getElementById("myform").submit()
	})
	ajax.addEventListener("click", function(e){
		//ajax 요청객체 생성
		var request = new XMLHttpRequest()
		//요청을 생성하고 요청
		//request.open('GET', 'process.jsp?email=1234@gmail.com')
		
		//ajax에서 POST방식으로 파라미터 전송하기
		request.open('post', 'process.jsp')
		//전송방식을 form으로 설정해서 post방식으로 전송한다.
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		request.send('email=1234@gmail.com')
		//ajax 요청에 성공하면 호출되는 콜백 메소드 등록
		request.onreadystatechange = function(){
			if(request.readyState == 4){
				if(request.status >= 200 && request.status<300){
					alert("요청 성공")
				}
			}
		}
	})
	
</script>
</html>