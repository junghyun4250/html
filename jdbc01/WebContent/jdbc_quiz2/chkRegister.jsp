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
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");

String new_id = request.getParameter("new_id");
String new_pwd = request.getParameter("new_pw");
String pwch = request.getParameter("new_pwch");
String name = request.getParameter("name");
String addr = request.getParameter("addr");
String tel = request.getParameter("tel");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "jsp";    
String pwd = "1234";
Connection conn = DriverManager.getConnection(url, id, pwd);
String sql = "insert into members values(?,?,?,?,?)";
PreparedStatement pstm = conn.prepareStatement(sql);
pstm.setString(1,new_id);
pstm.setString(2,new_pwd);
pstm.setString(3,name);
pstm.setString(4,addr);
pstm.setString(5,tel);
ResultSet rs = pstm.executeQuery();
}catch(SQLException e){
%>

<script type="text/javascript">
	alert("존재하는 아이디 입니다.");
	location.href="register.jsp";
	console.log('1111a');
</script>

<%}%>
<script type="text/javascript">
	alert("회원가입을 축하합니다.");
	location.href="login.jsp";
</script>
</body>
</html>