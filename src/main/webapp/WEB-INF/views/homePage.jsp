<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>${username }</h3>
	${password}
	<%
		String name = (String) request.getAttribute("username");
		String b = (String) request.getAttribute("password");
		int a = 5;
		int tong = a;
	%>
	<br>
	<%= tong %><br>
	<%= b %>
</body>
</html>