<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<table border='1'>
			<tr>
				<th>제&nbsp;목</th>
				<th>조&nbsp;회&nbsp;수</th>
			</tr>
			<tr>
				<th><a href="view2.jsp">안녕하세요</a></th>
				<th>
				<%if(application.getAttribute("cnt") == null){%>
				0	
				<%}else{%>
				<%=application.getAttribute("cnt")%>
				<%}%>
				</th>
			</tr>
		</table>
	</div>
</body>
</html>