<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다"; 
		String tagline = "Welcome to Web Market!";
	%>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3 class="display-3">
				<%= tagline %>
			</h3>
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>