<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	section{ text-align: center; display: flex; flex-flow: column;}
	h1{order: 1; }
	.div {order: 2; }
</style>
<script type="text/javascript">
	function logout(){
		document.getElementById('login').innerHTML = "로그아웃";
		document.getElementById('login').href = "logout.jsp";
	}
</script>
</head>
<body onload="logout()">
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<%if (session.getAttribute("userId") == null) {%>
	<script>
		alert('로그인한 회원만 접근 가능합니다.');
		location.href = "login.jsp";
	</script>
<%} %>
<%@include file="../default/header.jsp" %>
<jsp:useBean id="dao" class="members.MemberDAO" />
<%
ResultSet rs = dao.memberInfo();
%>
<section>
	<h1>회원 목록</h1>
	<div class="div">
	<table border='1'>
		<tr>
			<th>이름</th><th>주소</th><th>전화번호</th>
		</tr>
		<%
		while(rs.next()){%>
			<tr>
			<td>
			<a href='showInfo.jsp?id=<%=rs.getString("id")%>'>
			<%=rs.getString("name")%>
			</a>
			</td>
			<td><%=rs.getString("addr") %></td>
			<td><%=rs.getString("tel") %></td>
			</tr>
		<%}%>
	</table>
	</div>
</section>
<%@include file="../default/footer.jsp" %>
</body>
</html>