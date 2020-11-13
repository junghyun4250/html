<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--MemberDTO dto = new MemberDTO();--%>
	
	<%--useBean : 위의 new를 사용하여 객채를 만드는것과 동일하나 --%>
	<jsp:useBean id="dto" class="members.MemberDTO"/>
	
	<h3>저장 전 출력</h3>
	<%=dto.getId() %> : <%= dto.getPwd() %>
	
	<%
		dto.setId("test");
		dto.setPwd("1234");
	%>
	<h3>저장 후 출력</h3>
	<%=dto.getId() %> : <%= dto.getPwd() %>
</body>
</html>