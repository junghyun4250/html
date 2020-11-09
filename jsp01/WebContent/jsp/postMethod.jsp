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
		request.setCharacterEncoding("utf-8"); 
		response.setCharacterEncoding("utf-8");
	%>
	postMethod.jsp<br>
	id : <%= request.getParameter("id") %><br>
	pwd : <%= request.getParameter("pwd") %><br>
	name : <%= request.getParameter("name") %><br>
</body>
</html>