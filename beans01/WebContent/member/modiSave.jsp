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
<jsp:useBean id="mem" class="members.MemberDTO" />
<jsp:useBean id="dao" class="members.MemberDAO" />
<jsp:setProperty property="*" name="mem"/>

<%
dao.modi(mem, (String)session.getAttribute("userId"));
response.sendRedirect("showInfo.jsp");
%>
</body>
</html>