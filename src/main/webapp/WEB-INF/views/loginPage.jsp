<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp" />
</head>
<body id="body-login">
	<div id="body-flex-login">
		<div id="container-login">
		
			<div id="container-login-left">
				<div id="header-top-left" class="header-login">
					<span id="text-logo" >Welcome</span><br /> 
					<span id="hint-text-logo" >Hãy tạo nên phong cách của
						bạn cùng Minishop!</span>
				</div>
				<div id="header-bottom-left" >
					<p>
						<img alt="icon_oval" src='<c:url value="/resources/img/mirror.png"/>' >
						<span>Luôn cập nhật xu hướng thời trang mới nhất </span>
					</p>
					<p>
						<img alt="icon_oval" src='<c:url value="/resources/img/mirror.png"/>' >
						<span>Giảm hơn 50% tất cả các mặt hàng giành cho khách VIP
						</span>
					</p>
					<p>
						<img alt="icon_oval" src='<c:url value="/resources/img/mirror.png"/>' >
						<span>Tận tình tư vấn để tạo nên phong cách của bạn </span>
					</p>
				</div>
			</div>

			<div id="container-login-right">
				<div id="header-top-right" class="header-login">
					<span class="active">Sign In</span> / <span>Sign Up</span>
				</div>
				<div id="container-center-login-right">
					<form action="">
						<input class="material-textinput input-icon-email" type="text" placeholder="Email"/><br/>
						<input class="material-textinput input-icon-password" type="text" placeholder="Password"/><br/>
						<input class="material-primary-button" type="submit" value="Sign-In"/><br/>
					</form>
				</div>				
				<div id="container-social-login">
					<img alt="icon_oval" src='<c:url value="/resources/img/facebook.png"/>' >
					<img alt="icon_oval" src='<c:url value="/resources/img/google.png"/>' >
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>