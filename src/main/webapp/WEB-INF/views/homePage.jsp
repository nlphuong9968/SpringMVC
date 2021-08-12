<%@page import="java.util.List"%>
<%@page import="com.nlphuong.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
	
	<a id="testa" href="detail">Page Details</a><br>
	<!-- JSTL -->
	<!-- cach 1 -->
	${name }<br>
	${age }
	
	<br>
	<!-- cach 2 -->
	<c:out value="${name } ${age }"/>
	<br>
	<!-- cach 3 -->
	<c:out value="${name }"/><br>
	<c:out value="${age }"/>
	
</body>
</html>