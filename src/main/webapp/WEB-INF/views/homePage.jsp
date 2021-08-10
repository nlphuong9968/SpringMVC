<%@page import="java.util.List"%>
<%@page import="com.nlphuong.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/styles.css"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <a href="detail?id=123&name=macbook">Page Details</a> -->
	
	<!-- <a href="detail/123/macbook/2021-09-27">Page Details</a> -->
	
	<a id="testa" href="detail">Page Details</a>
	${name }
	
	<form action="detail" method="post">
		
		<input type="text" name="name"/><br>
		<input type="text" name="age"/><br>
		<!-- <input type="text" name="address"/><br> -->
		<input type="submit" value="Post data"/>
	</form>
	
</body>
</html>