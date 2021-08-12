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
	
	<!-- c:out -->
	
	<!-- cach 1 -->
	${name }<br>
	${age }
	
	<br>
	<!-- cach 2 -->
	<c:out value="${name } ${age }"/>
	<br>
	<!-- cach 3 -->
	<c:out value="${name }"/><br>
	<c:out value="${age }"/><br>
	
	<!-- c:set -->
	
	<!--cach 1: target trỏ tới bean trong IoC và dùng property để modify đối tượng trong bean -->
	<jsp:useBean id="director" class="com.nlphuong.entity.Director" />
	<c:set value="Nguyen Linh Phuong" target="${director}" property="position" />
	<c:out value="${director.position }"></c:out>
	<br>
	<!-- cach 2 -->
	<c:set var="firstName" value="${name } user" />
	<c:out value="${firstName }"/>
	<br>
	
	<!-- c:remove -->
	<c:remove var="firstName"/>
	<c:out value="${firstName }"/>
	<br>
	
	<!-- c:if -->
	<c:if test='${name == "admin" || age == 17}'>
		Hello ${name }
	</c:if>
	<br>
	<!-- c:catch -->
	<c:catch var="exception">
		<% int x = 5/0;%>
	</c:catch>
	<br>
	<c:if test="${exception != null }">
		Error : ${exception.message }
	</c:if>
</body>
</html>