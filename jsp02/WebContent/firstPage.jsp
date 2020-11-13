<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("name", "page man");
	request.setAttribute("name", "request man");
	session.setAttribute("name", "session man");
	application.setAttribute("name", "application man");
	%>
	<h3>firstPage</h3>
	<!-- pageContext는 현재 페이지만 유지 -->
	하나의 페이지 속성 : <%= pageContext.getAttribute("name") %><br>
	<!-- request는 forward기능을 사용하면 다음 페이지까지 유지 -->
	하나의 요청 속성 : <%= request.getAttribute("name") %><br>
	<!-- session은 페이지가 켜저있는 동안 유지 -->
	하나의 세션 속성 : <%= session.getAttribute("name") %><br>
	<!-- application은 서버가 켜져있는 동안 유지 -->
	하나의 어플 속성 : <%= application.getAttribute("name") %><br>
	<hr>
	<a href="secondPage.jsp">secondPage이동</a>
	<%
		request.getRequestDispatcher("secondPage.jsp").forward(request, response);
	%>
</body>
</html>