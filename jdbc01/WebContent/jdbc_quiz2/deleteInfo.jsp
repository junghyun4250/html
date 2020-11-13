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
request.setCharacterEncoding("utf8");

String id = (String)session.getAttribute("id");
System.out.println(id);
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
Connection connect = DriverManager.getConnection(url, "jsp", "1234");
String sql = "delete from members where id = ?";
PreparedStatement ps = connect.prepareStatement(sql);
ps.setString(1, (String)session.getAttribute("id"));
ps.executeUpdate();
response.sendRedirect("logout.jsp");
%>
</body>
</html>