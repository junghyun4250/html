<%@page import="java.util.ArrayList"%>
<%@page import="members.MemberDTO"%>
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
<%}else{ %>

<%@include file="../default/header.jsp" %>
<jsp:useBean id="mem" class="members.MemberDTO" />
<jsp:useBean id="dao" class="members.MemberDAO" />
<jsp:setProperty property="*" name="mem"/>
<%
String id = request.getParameter("id");
ArrayList<MemberDTO> list;
if(id == null){
	list = dao.modifyInfo((String)session.getAttribute("userId"));
}else{	
	list = dao.modifyInfo(id);
}
%>

<h1>개인 정보</h1>
<form action="modifyInfo.jsp" method="post">
	<table>
		<tr>
			<th><b>아&nbsp;이&nbsp;디</b></th>
			<td>&nbsp;&nbsp;&nbsp;<%=list.get(0).getId() %></td>
		</tr>
		<tr>
			<th><b>비밀번호</b></th>
			<td>&nbsp;&nbsp;&nbsp;<%=list.get(0).getPwd() %></td>
		</tr>
		<tr>
			<th><b>이&nbsp;름</b></th>
			<td name="name">&nbsp;&nbsp;&nbsp;<%=list.get(0).getName() %></td>
		</tr>
		<tr>
			<th><b>주&nbsp;소</b></th>
			<td>&nbsp;&nbsp;&nbsp;<%=list.get(0).getAddr() %></td>
		</tr>
		<tr>
			<th><b>전화번호</b></th>
			<td>&nbsp;&nbsp;&nbsp;<%=list.get(0).getTel() %></td>
		</tr>
		<%if(session.getAttribute("userId").equals(list.get(0).getId())){%>
			<tr>
				<th><input type="submit" value="수정"></th>
				<th><button type="button" onclick="if(confirm('정말 삭제하시겠습니까?')){location.href='deleteInfo.jsp';}">삭제</button></th>
			</tr>				
		<%}%>
	</table>
</form>
<%@include file="../default/footer.jsp" %>
<%} %>
</body>
</html>