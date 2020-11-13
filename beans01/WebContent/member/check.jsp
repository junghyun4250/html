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
<jsp:useBean id="mem" class="members.MemberDTO" />
<jsp:useBean id="dao" class="members.MemberDAO" />
<jsp:setProperty property="*" name="mem"/>
<%
	int msg_num = dao.loginCheck(mem);
	String msg;
	if(msg_num == 0){
		session.setAttribute("userId", mem.getId());
	%>
	<script type="text/javascript">
		alert("환영합니다!");
		location.href="successLogin.jsp";
	</script>
	<%}else if(msg_num == 1){	%>
	<script type="text/javascript">
		alert("비밀번호가 일치하지 않습니다.");
		location.href="login.jsp";
	</script>
	<%}else{%>
	<script type="text/javascript">
		alert("등록되지 않은 아이디 입니다.");
		location.href="login.jsp";
	</script>
	<%} %>
</body>
</html>