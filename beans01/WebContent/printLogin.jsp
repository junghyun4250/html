<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>printLogin.jsp<br>
	<jsp:useBean id="mem" class="members.MemberDTO" />
	<%-- setProperty를 사용하면 원래는 set으로 하나씩 추가해야하지만 *을 써서 한번에 사용할수 있다 (단, 이름이 일치를 해야합니다) --%>
	<jsp:setProperty property="*" name="mem"/>
	id : <%=mem.getId() %><br>
	pwd : <%=mem.getPwd() %><br>
	name : <%=mem.getName() %><br>
	addr : <%=mem.getAddr() %><br>
	tel : <%=mem.getTel() %><br>
</body>
</html>







