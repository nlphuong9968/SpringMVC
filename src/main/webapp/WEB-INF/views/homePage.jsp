<%@page import="java.util.List"%>
<%@page import="com.nlphuong.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <h3>${employee.getName()}</h3>
	<h3>${employee.getAge()}</h3>
	<h3>${employee.getAddress()}</h3>
	
	
	<%
		Employee emp = (Employee) request.getAttribute("employee");
	%>
	
	<h3><%= emp.getName() %></h3>  --%>
	
	<% List<Employee> list = (List<Employee>) request.getAttribute("empList"); 
		for(Employee emp : list){ %>
		
		<h3><%= emp.getName() %></h3>
		<br>
	<%	} %>
	
	
</body>
</html>