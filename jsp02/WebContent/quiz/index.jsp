<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>CARE LAB</h1>
	<h3>저희 사이트에 방문해 주셔서 감사합니다.</h3>
	<%
	boolean bool = false;
	Cookie[] cookieArr = request.getCookies();
	for(Cookie c:cookieArr){
		if(c.getName().equals("myCookie"))
			bool=true;
	}
	if(bool == false){
	%>
	<script type="text/javascript">
		window.open("popup.jsp","","width=500, height=300, top=500, left=500");
	</script>
	<%} %>
</body>
</html>