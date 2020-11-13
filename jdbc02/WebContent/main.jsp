<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<br>	
<%--
	파일을 합친후에 번역을 시작한다
	<%@include file="jspInclude.jsp" %>
	<h3 class="cl">나는 나 너는 너 <%=name %></h3>
--%>
<%--파일을 따로따로 번역하기떄문에 jsp문법인 <%= %> 사용할수 없다 --%>
	<jsp:include page="jspInclude.jsp"/>
	<h3 class="cl">나는 나 너는 너</h3>
	
</body>
</html>









