<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>request.getParameterNames() 메서드 사용</h3>
	<%
	request.setCharacterEncoding("utf-8");
	Enumeration data = request.getParameterNames();
	
	while(data.hasMoreElements()) {
		String name = (String)data.nextElement();
		if(name.equals("season")){
			String se[]=request.getParameterValues(name);
			for(String s:se)
				out.print(name+":"+s+"<br>");
		}else{
			out.print(name+":"+request.getParameter(name)+"<br>");
		}
	}
%>
	
</body>
</html>