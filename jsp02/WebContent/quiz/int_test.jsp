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
if(application.getAttribute("cnt") == null){
	application.setAttribute("cnt",1 );
}else{
	application.setAttribute("cnt",
			(int)application.getAttribute("cnt")+1 );
}
%>
<h1>게시글 입니다</h1>
<h3>공지사항 입니다.</h3>
jsp application을 이용한
조회수 올리기 문제 입니다<br>
<a href="quiz.jsp">돌아가기</a>
</body>
</html>
