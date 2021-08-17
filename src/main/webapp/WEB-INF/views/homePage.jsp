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
	<div id="header" class="container-fluid">
		<nav class="navbar navbar-default none-nav">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><img
						style="height: 40px; width: auto;"
						src='<c:url value="/resources/img/logo.png" />'></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-center">
						<li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Dropdown <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
						<li><a href="#">Services</a></li>
						<li><a href="#">Contacts</a></li>

					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">Sign in</a></li>
						<li><a href="#">Sign up</a></li>
						<li><a href="#"><img
								src='<c:url value="/resources/img/shopping-cart.png" />' /></a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<div class="event-header container wow animate__rubberBand" data-wow-duration="2s">
			<span>from &nbsp&nbsp<strong>27/09</strong>&nbsp&nbsp to
				&nbsp&nbsp<strong>27/10</strong></span><br /> <span
				style="font-size: 50px;">Buy ONE Get ONE</span><br />
			<button>GET INFO</button>
		</div>
	</div>

	<div id="info" class="container">
		<div class="col-12 col-sm-4 col-md-4 wow animate__fadeInLeft" data-wow-duration="1s" >
			<img class="icon" alt=""
				src='<c:url value="/resources/img/quality.png" />' /><br /> <span
				style="font-size: 32px; font-weight: 500;">Quality</span><br /> <span>Committed
				to bring you the best quality products</span><br />
		</div>

		<div class="col-12 col-sm-4 col-md-4 wow animate__fadeInDown" data-wow-duration="1s" data-wow-delay="1s">
			<img class="icon" alt=""
				src='<c:url value="/resources/img/piggy-bank.png" />' /><br /> <span
				style="font-size: 32px; font-weight: 500;">Cost savings</span><br />
			<span>Committed to the cheapest price in Vietnam to save you
				20% of the cost</span><br />
		</div>

		<div class="col-12 col-sm-4 col-md-4 wow animate__fadeInUp" data-wow-duration="1s"data-wow-delay="2s">
			<img class="icon" alt=""
				src='<c:url value="/resources/img/fast-delivery.png" />' /><br />
			<span style="font-size: 32px; font-weight: 500;">Delivery</span><br />
			<span>Free delivery commitment within the city</span><br />
		</div>

	</div>
	<div id="title-product" class="container">
		<span>Hot Products</span>
		<div class="row">

			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>

			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>

			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>
			
			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>

			<div class="col-md-3 col-sm-6" >
				<div class="product wow animate__bounceIn">
					<img alt="" src='<c:url value="/resources/img/dress01.png" />' /><br />
					<span>Caro skirt</span><br /> <span class="price">150.000
						VND</span>
				</div>
			</div>
			
			<!-- end product -->
		</div>
	</div>

	<div id="footer" class="container-fluid">
		<div class="row">
			<div class="col-sm-4 col-md-4 wow animate__heartBeat" >
				<p><span class="title-footer">Shop Info</span></p>
				<span>FASHION SHOPS THE online wholesale Marketplace for fashion professional actors and decision makers. A large range of women, men and kids’ garments, as well as of shoes, bags and accessories Brands provided by Paris and Aubervilliers best wholesalers.</span>
			</div>

			<div class="col-sm-4 col-md-4 wow animate__heartBeat" >
				<p><span class="title-footer">Contact</span></p>
				<span>- Head office : 91 rue du Faubourg-Saint-Honoré 75008 ParisS.A.S. with 470 975,00 euros capital </span><br>
				<span>- R.C.S. Paris 819 963 919</span><br>
				<span>- Nguyen Linh Phuong</span><br>
			</div>

			<div class="col-sm-4 col-md-4 wow animate__heartBeat" >
				<p><span class="title-footer">Feedback</span></p>
				<input class="footer-input" type="text" placeholder="Email">
				<textarea class="footer-input" rows="4" cols="50" placeholder="Content"></textarea>
				<button class="material-primary-button">Submit</button>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>