<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function cong(){
		alert("<%=session.getAttribute("loginUser") %>" + "님 반갑습니다.")
	}
</script>
</head>
<body onload="cong()">
<%
		if (session.getAttribute("sessionName") == null) {
	%>
	<script>
		alert('로그인한 회원만 접근 가능합니다.');
		location.href = "login.jsp";
	</script>


<%}
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "jsp";    
String pwd = "1234";
Connection conn = DriverManager.getConnection(url, id, pwd);
String sql = "select * from members";
PreparedStatement pstm = conn.prepareStatement(sql);
ResultSet rs = pstm.executeQuery();
%>
<h1>회원들만의 페이지.</h1>
<table border='1'>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>주소</th>
			<th>전화번호</th>
		</tr>
	<%
	while(rs.next()){
		out.print("<tr>");
		out.print("<td>"+rs.getString("id")+"</td>");
		out.print("<td>"+rs.getString("pwd")+"</td>");
		out.print("<td>"+rs.getString("name")+"</td>");
		out.print("<td>"+rs.getString("addr")+"</td>");
		out.print("<td>"+rs.getString("tel")+"</td>");
		out.print("</tr>");
	}
	%>
	</table>
	<button onclick="location='logout.jsp'">로그아웃</button>
	<button onclick="location='showInfo.jsp'">계정정보</button>
</body>
</html>