<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp" />
</head>
<%-- <body id="body-login">
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
<jsp:include page="footer.jsp" />
</body> --%>
<body>
	<div class="limiter" id="login">
		<div class="container-login100"
			style="background-image: url(<c:url value="/resources/img/backgroundlogin.jpeg" />);">
			<div class="container">
				<div class="row">
					<div class="col-md-6"></div>
					<div class="col-md-5 col-md-offset-1">
						<div class="login_topimg"></div>
						<div class="wrap-login100">
							<form action="" method="post" class="login100-form validate-form">
								<span class="login100-form-title "> Login </span> <span
									class="login100-form-subtitle m-b-16"> to your account </span>
								<div class="wrap-input100 validate-input m-b-16"
									data-validate="Valid email is required: ex@abc.xyz">
									<input class="input100" type="text" name="username"
										placeholder="Username or Email"> <span
										class="focus-input100"></span> <span class="symbol-input100">
										<span class="glyphicon glyphicon-user"></span>
									</span>
								</div>
								<div class="wrap-input100 validate-input m-b-16"
									data-validate="Password is required">
									<input class="input100" type="password" name="password"
										placeholder="Password"> <span class="focus-input100"></span>
									<span class="symbol-input100"> <span
										class="glyphicon glyphicon-lock"></span>
									</span>
								</div>
								<div class="flex-sb-m w-full p-b-30">
									<div class="contact100-form-checkbox">
										<input class="input-checkbox100" id="ckb1" type="checkbox"
											name="remember-me"> <label class="label-checkbox100"
											for="ckb1"> Remember me </label>
									</div>
									<div>
										<a href="#" class="txt1"> Forgot Password? </a>
									</div>
								</div>
								<div class="container-login100-form-btn p-t-25">
									<button class="login100-form-btn">Login</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>