<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="color: skyblue;">CARE LAB</h1>
	<h3>안녕하세요</h3>
	<%
		boolean bool = false;
		Cookie cookie = new Cookie("testCookie","myCookie"); //쿠키 이름과 값 설정
		cookie.setMaxAge(5); //쿠키 지속시간
		response.addCookie(cookie); //쿠키 추가하는 코드
		Cookie[] cookieArr = request.getCookies(); //쿠키를 불러와서 배열에 저장
		if(cookieArr != null){
			for(Cookie c: cookieArr){
				out.print("name : " + c.getName()+"<br>");
				out.print("value : " + c.getValue()+"<hr>");
				if(c.getName().equals("testCookie")){
					bool = true;
				}
			}
		}
	%>
	<%if(bool == false){ %>
	<script type="text/javascript">
		window.open("popup.jsp","","width=300, height=200, top=500, left=500");
	</script>
	<%} %>
</body>
</html>