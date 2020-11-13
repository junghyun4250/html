<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
dao.register(mem);
%>
<script type="text/javascript">
	alert("회원가입을 축하합니다!");
	location.href="login.jsp";
</script>
</body>
</html>