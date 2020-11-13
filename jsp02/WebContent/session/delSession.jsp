<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션이 삭제 되었습니다</h1>
	<%
		//session.removeAttribute("age");
		//session.setMaxInactiveInterval(5); //5초후에 모든 세션 종료
		session.invalidate(); //모든세션 즉시종료
	%>
	<a href="getSession.jsp">getSession(세션확인)이동</a>
	<a href="setSession.jsp">setSession(세션설정)이동</a>
</body>
</html>