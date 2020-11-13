<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">
	빨간페이지 입니다
	<!-- request값을 다음 페이지 까지 전달할수있다(경로는 현재 페이지이지만 보여지는건 forward의 경로 페이지 입니다 -->
	<jsp:forward page="yellow.jsp"></jsp:forward>
</body>
</html>