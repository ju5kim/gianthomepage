<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자로그인</title>
<script>
	function fncGoLogin(){
		var id = document.frm.loginId.value;
		var pw = document.frm.loginPw.value;
		alert(id + "//" + pw);
		if(id != "gsadmin" || pw != 123){
			alert("아이디 혹은 비밀번호 체크");
		}else{
			document.frm.submit();
		}
	}
</script>
</head>
<body>
<h1>관리자 로그인</h1>
<form name = "frm" id = "frm" action = "gsAdmin" method = "post">
	<div>
		<input type = "text" name = "loginId" id = "loginId">
		<input type = "password" name = "loginPw" id = "loginPw">
		<input type = "hidden" name = "userName" id = "userName" value = "자이언트솔루션">
	</div>
	<div>
		<input type = "button" name = "loginBtn" id = "loginBtn" value = "로그인" onclick="fncGoLogin()">
	</div>
</form> 


</body>
</html>