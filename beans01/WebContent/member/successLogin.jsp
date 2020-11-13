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
<%if (session.getAttribute("userId") == null) {%>
	<script>
		alert('로그인한 회원만 접근 가능합니다.');
		location.href = "login.jsp";
	</script>
<%} %>
<%@include file="../default/header.jsp" %>
<h1>로그인 페이지 입니다</h1>
<%@include file="../default/footer.jsp" %>
</body>
</html>