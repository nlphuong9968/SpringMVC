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
							<c:choose>
								<c:when test="${checkAddNhanvien != null }">
									<div class="login100-form-title actived"
										style="cursor: pointer">
										<span id="signin">Login</span> <span>/</span> <span
											class="active" id="signup">Register</span>
									</div>
									<span class="login100-form-subtitle m-b-16"> to your
										account </span>
									<div id="container-signin" style="display: none">
										<form action="" method="post"
											class="login100-form validate-form">
											<div class="wrap-input100 validate-input m-b-16"
												data-validate="Valid email is required: ex@abc.xyz">
												<input class="input100" type="text" name="email" id="email"
													placeholder="Email"> <span class="focus-input100"></span>
												<span class="symbol-input100"> <span
													class="glyphicon glyphicon-envelope"></span>
												</span>
											</div>
											<div class="wrap-input100 validate-input m-b-16"
												data-validate="Password is required">
												<input class="input100" type="password" id="password"
													name="password" placeholder="Password"> <span
													class="focus-input100"></span> <span
													class="symbol-input100"> <span
													class="glyphicon glyphicon-lock"></span>
												</span>
											</div>
											<div class="flex-sb-m w-full p-b-30">
												<div class="contact100-form-checkbox">
													<input class="input-checkbox100" id="ckb1" type="checkbox"
														name="remember-me"> <label
														class="label-checkbox100" for="ckb1"> Remember me
													</label>
												</div>
												<div>
													<a href="#" class="txt1"> Forgot Password? </a>
												</div>
											</div>
											<div class="container-login100-form-btn p-t-25">
												<p id="btnLogin" class="login100-form-btn">Login</p>
												<span id="result"></span>

											</div>
										</form>
									</div>
									<div id="container-signup">
										<form action="" method="post"
											class="login100-form validate-form">

											<div class="wrap-input100 validate-input m-b-16"
												data-validate="Valid email is required: ex@abc.xyz">
												<input class="input100" type="text" name="email" id="email"
													placeholder="Email"> <span class="focus-input100"></span>
												<span class="symbol-input100"> <span
													class="glyphicon glyphicon-envelope"></span>
												</span>
											</div>
											<div class="wrap-input100 validate-input m-b-16"
												data-validate="Password is required">
												<input class="input100" type="password" id="password"
													name="password" placeholder="Password"> <span
													class="focus-input100"></span> <span
													class="symbol-input100"> <span
													class="glyphicon glyphicon-lock"></span>
												</span>
											</div>
											<div class="wrap-input100 validate-input m-b-16"
												data-validate="Password is required">
												<input class="input100" type="password" id="confPassword"
													name="confPassword" placeholder="Confirm Password">
												<span class="focus-input100"></span> <span
													class="symbol-input100"> <span
													class="glyphicon glyphicon-lock"></span>
												</span>
											</div>
											<div class="container-login100-form-btn p-t-25">
												<button id="btnLogin" class="login100-form-btn">Register</button>
											</div>
										</form>
									</div>
								</c:when>
								<c:otherwise>
									<div class="login100-form-title actived"
										style="cursor: pointer">
										<span class="active" id="signin">Login</span> <span>/</span> <span
											id="signup">Register</span>
									</div>
									<span class="login100-form-subtitle m-b-16"> to your
										account </span>
									<div id="container-signin">
										<form action="" method="post"
											class="login100-form validate-form">
											<div class="wrap-input100 validate-input m-b-16"
												data-validate="Valid email is required: ex@abc.xyz">
												<input class="input100" type="text" name="email" id="email"
													placeholder="Email"> <span class="focus-input100"></span>
												<span class="symbol-input100"> <span
													class="glyphicon glyphicon-envelope"></span>
												</span>
											</div>
											<div class="wrap-input100 validate-input m-b-16"
												data-validate="Password is required">
												<input class="input100" type="password" id="password"
													name="password" placeholder="Password"> <span
													class="focus-input100"></span> <span
													class="symbol-input100"> <span
													class="glyphicon glyphicon-lock"></span>
												</span>
											</div>
											<div class="flex-sb-m w-full p-b-30">
												<div class="contact100-form-checkbox">
													<input class="input-checkbox100" id="ckb1" type="checkbox"
														name="remember-me"> <label
														class="label-checkbox100" for="ckb1"> Remember me
													</label>
												</div>
												<div>
													<a href="#" class="txt1"> Forgot Password? </a>
												</div>
											</div>
											<div class="container-login100-form-btn p-t-25">
												<p id="btnLogin" class="login100-form-btn">Login</p>
												<span id="result"></span>

											</div>
										</form>
									</div>
									<div id="container-signup" style="display: none;">
										<form action="" method="post"
											class="login100-form validate-form">

											<div class="wrap-input100 validate-input m-b-16"
												data-validate="Valid email is required: ex@abc.xyz">
												<input class="input100" type="text" name="email" id="email"
													placeholder="Email"> <span class="focus-input100"></span>
												<span class="symbol-input100"> <span
													class="glyphicon glyphicon-envelope"></span>
												</span>
											</div>
											<div class="wrap-input100 validate-input m-b-16"
												data-validate="Password is required">
												<input class="input100" type="password" id="password"
													name="password" placeholder="Password"> <span
													class="focus-input100"></span> <span
													class="symbol-input100"> <span
													class="glyphicon glyphicon-lock"></span>
												</span>
											</div>
											<div class="wrap-input100 validate-input m-b-16"
												data-validate="Password is required">
												<input class="input100" type="password" id="confPassword"
													name="confPassword" placeholder="Confirm Password">
												<span class="focus-input100"></span> <span
													class="symbol-input100"> <span
													class="glyphicon glyphicon-lock"></span>
												</span>
											</div>
											<div class="container-login100-form-btn p-t-25">
												<button id="btnLogin" class="login100-form-btn">Register</button>
											</div>
										</form>
									</div>
								</c:otherwise>
							</c:choose>
							<span id="result"></span> <span>${checkAddNhanvien }</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>