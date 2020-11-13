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

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
Connection connect = DriverManager.getConnection(url, "jsp", "1234");
String id = (String)session.getAttribute("id");
Statement stmt = connect.createStatement();
String sql = "select * from members where id='" + id + "'";
ResultSet rs = stmt.executeQuery(sql);

String mem_id = "";
String mem_pwd = "";
String mem_name = "";
String mem_addr = "";
String mem_tel = "";

if(rs.next()){
	mem_id = rs.getString("id");
	mem_pwd = rs.getString("pwd");
	mem_name = rs.getString("name");
	mem_addr = rs.getString("addr");
	mem_tel = rs.getString("tel");
}
%>
<h1>회원 정보 수정 및 삭제</h1>
<form action="modifyInfo.jsp" method="post">
<table>
	<tr>
		<td align="right">아이디:</td>
		<td><input type="text" value="<%=mem_id %>" name="modi_id"></td>
	</tr>
	<tr>
		<td align="right">비밀번호:</td>
		<td><input type="text" value="<%=mem_pwd %>" name="modi_pwd"></td>
	</tr>
	<tr>
		<td align="right">이름:</td>
		<td><input type="text" value="<%=mem_name %>" name="modi_name"></td>
	</tr>
	<tr>
		<td align="right">주소:</td>
		<td><input type="text" value="<%=mem_addr %>" name="modi_addr"></td>
	</tr>
	<tr>
		<td align="right">전화번호:</td>
		<td><input type="text" value="<%=mem_tel %>" name="modi_tel"></td>
	</tr>
	<tr>
		<td align="right">
		<input type="submit" value="수정">
		</td>
		<td>
		<button type="button" onclick="if(confirm('정말 삭제하시겠습니까?')){location.href='deleteInfo.jsp';}">
삭제</button>
		</td>
	</tr>
</table>
</form>
</body>
</html>