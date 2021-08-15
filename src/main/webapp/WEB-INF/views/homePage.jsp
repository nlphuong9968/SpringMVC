<%@page import="java.util.List"%>
<%@page import="com.nlphuong.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/styles.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp" />
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-3 col-sm-4"
				style="height: 100px; background-color: red"></div>

			<div class="col-xl-3 col-sm-8"
				style="height: 100px; background-color: blue"></div>

			<div class="col-xl-3 col-sm-7"
				style="height: 100px; background-color: green"></div>

			<div class="col-xl-3 col-sm-5"
				style="height: 100px; background-color: aqua;"></div>
		</div>

	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>