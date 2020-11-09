<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <% %> : 는 jsp 문법입니다 -->
	<%--
		int num = 123;
		System.out.print(num);
		out.print(num);
		out.print("<hr>");				
	--%>
	<%String name = "JSP"; %>
	<h1><%out.print(name); %> 시작입니다</h1>
	<h1><%out.print(name); %> 끝입니다</h1>
	<hr>
	<%= name %>
	<hr>
	자바 명렁어로 덧셈 연산<p>
	<%
		int n1 = 10;
		int n2 = 20;
		int add = n1+n2;
	%>
	<%=n1%> + <%=n2%> = <%=add%><br>
	<%=n1 + " + " + n2 + " = " + (n1+n2) %>
	<hr>
	<input type="text" value="10 + 20 = <%=n1+n2 %>">
	<hr>
	<%
	int sum = 0;
	for(int i = 1; i < 101; i++){
		sum += i;
	}
	%>
	1 + 2 + 3 + .... + 100 = <%=sum %>
	<br>
	<%
	int evenSum = 0;
	for(int i = 1; i < 101; i++){
		if(i % 2 == 0){
			evenSum += i;
		}
	}
	%>
	1 ~ 100 까지의 짝수의 합 : <%=evenSum %>
	<br>
	<%
	int oddSum = 0;
	for(int i = 1; i < 101; i++){
		if(i % 2 == 1){
			oddSum += i;
		}
	}
	%>
	1 ~ 100 까지의 홀수의 합 : <%=oddSum %>
	<hr>
	<%! int cnt01 = 0; %>
	<%= cnt01++ %>
</body>
</html>





























