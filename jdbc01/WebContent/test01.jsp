<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		//ojdbc6.jar 파일을 WEB-INF/lib/ 폴더아래 복사해줘야 에러가 안나고 실행됩니다.
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "java", pwd="1234";
		Connection con = DriverManager.getConnection(url, id, pwd);
		String sql = "select * from newst";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		out.print("id name age<hr>");
		while(rs.next()){
			System.out.print(rs.getString("id")+" ");
			out.print(rs.getString("id") + "  ");
			out.print(rs.getString("name") + "  ");
			out.print(rs.getString("age") + "<br>");
		}
	%>
</body>
</html>