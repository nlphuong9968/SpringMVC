<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>chu de JSP</h3>
	
	<!-- scriptlet tag -->
	<h2>scriptlet tag</h2>
	<% 	int a = 2;
		int b =4;
		int tong = a + b;
		out.print("Tong la: "+tong);
	%>
	
	<!-- expression tag -->
	<h2>expression tag</h2>
	<%= tong %>
	
	<!-- declaration tag -->
	<h2>declaration tag</h2>
	<%!	int e = 2;
		int f =4;
		int c = 2;
		int tong1 = e + f + c;	
	%>
	<%= tong1 %>
</body>
</html>