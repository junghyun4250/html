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
	
	String modi_id = request.getParameter("modi_id");
	String modi_pwd = request.getParameter("modi_pwd");
	String modi_name = request.getParameter("modi_name");
	String modi_addr = request.getParameter("modi_addr");
	String modi_tel = request.getParameter("modi_tel");
	System.out.println(modi_id);

	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection connect = DriverManager.getConnection(url, "jsp", "1234");
	String sql = "update members set pwd=?,name=?,addr=?,tel=? where id=?";
	PreparedStatement ps = connect.prepareStatement(sql);	
	ps.setString(1, modi_pwd);
	ps.setString(2, modi_name);
	ps.setString(3, modi_addr);
	ps.setString(4, modi_tel);
	ps.setString(5, modi_id);
	ps.executeUpdate();
	session.setAttribute("loginUser", modi_name);
	response.sendRedirect("main.jsp");
	%>
</body>
</html>