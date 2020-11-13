<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#wrap{display: flex; flex-flow: row; margin-top: 30px; height: 300px;}
	.laside{order:1; width: 35%;}
	.section{order:2; width: 30%; text-align: center; display: flex; flex-flow: column;}
	.span{order:1; font-weight: bolder;}
	.napoleon{order: 2; text-align: right; font-weight: bolder; margin-right:40px;}
	.raside{order:3; width: 35%;}
</style>
</head>
<body>
	<%@include file="../default/header.jsp" %>
	<div id="wrap">
		<aside class="laside">
		</aside>
		<section class="section">
			<span class="span">내 사전에 불가능은 없다.<br>
			불가능은 소극적인 자의 환영이며<br>
			비겁한자의 도피처 이다.</span>
			<span class="napoleon"><br>- 나폴레옹</span>
		</section>
		<aside class="raside">
		</aside>
	</div>
	<%@include file="../default/footer.jsp" %>
</body>
</html>