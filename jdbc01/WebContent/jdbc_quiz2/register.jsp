<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function pwcheck(){
	msg = document.getElementById('msg')
	if(document.getElementById('new_pw').value == document.getElementById('new_pwch').value){
		msg.style.color = "black"
		msg.innerHTML = "확인!!"
	}else{
		document.getElementById('new_pw').value = "";
		document.getElementById('new_pwch').value = "";
		msg.style.color = "black"
		msg.innerHTML = "불일치!!"
	}
}
function check(){	
	if(document.getElementById('new_id').value == ""){
		alert("아이디는 필수 사항힙니다")
		document.getElementById('new_id').focus()
	}else if(document.getElementById('new_pw').value == ""){
		alert("비밀번호는 필수 사항입니다")
		document.getElementById('new_pw').focus()
	}else if(document.getElementById('new_pw').value != document.getElementById('new_pwch').value){
		alert("비밀번호 확인은 필수 사항입니다")
		document.getElementById('new_pw').focus()
		document.getElementById('new_pw').value = "";
		document.getElementById('new_pwch').value = "";
	}else{
		fo.submit()
	}
}
</script>
</head>
<body>
	<form id="fo" action="chkRegister.jsp" method="get">
		<input type="text" placeholder="아이디" name="id" id="new_id"><span>(*필수항목)</span><br>
		<input type="password" placeholder="비밀번호" name="pwd" id="new_pw"><br>
		<input type="password" placeholder="비밀번호 확인" name="pwdch" id="new_pwch" onchange="pwcheck()"><span id="msg">(*필수항목)</span><br>
		<input type="text" placeholder="이름" name="name"><br>
		<input type="text" placeholder="주소" name="addr"><br>
		<input type="text" placeholder="전화번호" name="tel"><br>
		<input type="button" value="회원가입" onclick="check()">
	</form>
</body>
</html>