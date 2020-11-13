<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
ArrayList<MemberDTO> list = dao.modify((String)session.getAttribute("userId"));
%>
<form action="modiSave.jsp" method="post">
	<table>
		<tr>
			<th>이&nbsp;름</th>
			<td><input type="text" name="name" value="<%=list.get(0).getName() %>"></td>
		</tr>
		<tr>
			<th>주&nbsp;소</th>
			<td><input type="text" name="addr" value="<%=list.get(0).getAddr() %>"></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><input type="text" name="tel" value="<%=list.get(0).getTel() %>"></td>
		</tr>
		<tr>
			<th></th>
			<td>
				<input type="submit" value="완료">
				<button type="reset" onclick="{location.href='memberInfo.jsp';}">취소</button>
			</td>
		</tr>
	</table>
</form>

<%@include file="../default/footer.jsp" %>
</body>
</html>