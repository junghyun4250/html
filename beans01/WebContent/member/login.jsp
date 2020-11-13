<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#wrap{ display: flex; flex-flow: row; height: 300px;}
	.laside{order:1; width: 60%; margin: 30px;}
	.raside{order:2; width: 40%; display:flex; flex-flow:column; margin-top:80px;}
	.login { order:1; display:flex; width:100%; height:25%; }
    .button{}
    .member { order:2; width:200px; height:20%;}
</style>
<script type="text/javascript">
	function memberInfo(){
		document.getElementById('memberInfo').href = "login.jsp";
	}
</script>
</head>
<body onload="memberInfo()">
<jsp:useBean id="dao" class="members.MemberDAO" />
	<%@include file="../default/header.jsp" %>
	<div id="wrap">
		<aside class="laside">
			<h1>로그인 페이지 입니다</h1>
		</aside>
		<aside class="raside">
			<div class="login">
			<form action="check.jsp" method="post">
	        	<div style="width:70%;">	        	
		            <input type="text" placeholder="아이디" name="id">
		            <input type="text" placeholder="비밀번호" name="pwd">	            
	            </div>
	            <input type="submit" value="로그인">
	            <a href="register.jsp" class="member">회원가입</a>
            </form>
	        </div>	    	
		</aside>
	</div>
	<%@include file="../default/footer.jsp" %>
</body>
</html>