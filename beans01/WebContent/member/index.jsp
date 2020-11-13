<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function logout(){
		document.getElementById('login').innerHTML = "로그아웃";
		document.getElementById('login').href = "logout.jsp";
	}
</script>
</head>
<body onload="logout()">
	<%@include file="../default/main.jsp" %>
</body>
</html>