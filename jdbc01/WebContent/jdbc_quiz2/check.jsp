<%@page import="java.sql.*"%>
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
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "jsp";    
String pwd = "1234";
Connection conn = DriverManager.getConnection(url, id, pwd);
String sql = "select * from members";
//String sql = "select * from members where='"+request.getParameter("pwd")+"'";
PreparedStatement pstm = conn.prepareStatement(sql);
ResultSet rs = pstm.executeQuery();
%>
<!-- 

/*
if(rs.next()){
	//해당 아이디가 존재한다.
	if(rs.getString("pwd").equals(request.getParameter("pwd"))){
		//비밀번호가 같다면
		
	}else{
		//비밀번호가 틀리다면
		
	}
}else{
	//해당 아이디가 없다.
	
}
*/
%>
 -->

<%
while(rs.next()){
	if(rs.getString("id").equals(request.getParameter("id"))){
		if(rs.getString("pwd").equals(request.getParameter("pwd"))){
			session.setAttribute("id", rs.getString("id"));
			session.setAttribute("loginUser", rs.getString("name"));
			response.sendRedirect("main.jsp");
			%>
		
		<%}else{%>
		<script type="text/javascript">
			alert("비밀번호가 틀렸습니다.");
			location.href="login.jsp";
		</script>
		<%}
	}else{%>
		<script type="text/javascript">
		alert("그런아이디는 존재하지 않습니다.");
		location.href="login.jsp";
		</script>
	<%}
} %>
</body>
</html>