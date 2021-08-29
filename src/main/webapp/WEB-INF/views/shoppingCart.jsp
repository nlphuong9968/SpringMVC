<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp" />
</head>
<body>
	<div id="header-detail" class="container-fluid">
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
						<c:choose>
							<c:when test="${firstChar != null }">
								<li><a class="circle-avatar" href="login/"><span>${firstChar }</span>
								</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="login/">Sign in</a></li>
							</c:otherwise>
						</c:choose>

						<li id="cart"><a href="#"><img
								src='<c:url value="/resources/img/shopping-cart.png" />' /> <c:if
									test="${quantityPro > 0 }">
									<div class="circle-cart">
										<span>${quantityPro }</span>
									</div>
								</c:if> <c:if test="${quantityPro <= 0  || quantityPro == null}">
									<div>
										<span>${quantityPro }</span>
									</div>
								</c:if> </a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	</div>

	<div class="container">
		<div class="row">
		<div class="col-md-7 col-sm-12">
				<h3>Shopping Cart List</h3>
				<table class="table">
					<thead>
						<tr>
							<td></td>
							<td><h5>Tên SP</h5></td>
							<td><h5>Màu</h5></td>
							<td><h5>Size</h5></td>
							<td><h5>Số lượng</h5></td>
							<td><h5>Giá Tiền</h5></td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="value" items="${lstCarts}">
							<tr>
								<td><img style="width: 40px" alt=""
									src='<c:url value="/resources/img/product/${value.getImage()}" />'>
								</td>
								<td>${value.getTensp()}</td>
								<td class="mau" data-mamau="${value.getMamau() }">${value.getTenmau() }</td>
								<td class="size" data-masize="${value.getMasize() }">${value.getTensize() }</td>
								<td class="soluong"><input style="width: 50px"
									type="number" value="${value.getSoluong()}" /></td>
								<td>${value.getGiatien() }</td>
								<td><button class="btn btn-success btn-cart">Delete</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<h4 >Tổng tiền: <span style="color: red">1,555,000 VNĐ</span></h4>
			</div>
			<div class="col-md-5 col-sm-12">
				<h3>Customer Info</h3>
				<form action="" method="post">
					<div class="input-group">
						<span class="input-group-addon">Tên người nhận/mua </span> <input
							type="text" class="form-control">
					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-phone-alt" aria-hidden="true">
						</span>
						</span> <input type="tel" class="form-control" aria-label="Phone Number"
							placeholder="Số điện thoại liên lạc ">
					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon"> <input type="radio"
							name="rdHinhthuc"></span> <input type="text"
							value="Giao hàng tận nơi" disabled class="form-control">

					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon"> <input type="radio"
							name="rdHinhthuc"></span> <input type="text"
							value="Nhận hàng tại cửa hàng " disabled class="form-control">

					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon">Địa chỉ nhận hàng</span> <input
							type="text" class="form-control">
					</div>
					<br>
					<div class="form-group">
						<label for="comment">Ghi chú:</label>
						<textarea class="form-control" rows="5" id="comment"></textarea>
					</div>
					<input type="submit" class="btn btn-primary" value="Đặt hàng ">
				</form>
			</div>
		</div>
	</div>

	<div id="footer" class="container-fluid">
		<div class="row">
			<div class="col-sm-4 col-md-4">
				<p>
					<span class="title-footer">Shop Info</span>
				</p>
				<span>FASHION SHOPS THE online wholesale Marketplace for
					fashion professional actors and decision makers. A large range of
					women, men and kids’ garments, as well as of shoes, bags and
					accessories Brands provided by Paris and Aubervilliers best
					wholesalers.</span>
			</div>

			<div class="col-sm-4 col-md-4 ">
				<p>
					<span class="title-footer">Contact</span>
				</p>
				<span>- Head office : 91 rue du Faubourg-Saint-Honoré 75008
					ParisS.A.S. with 470 975,00 euros capital </span><br> <span>-
					R.C.S. Paris 819 963 919</span><br> <span>- Nguyen Linh Phuong</span><br>
			</div>

			<div class="col-sm-4 col-md-4 ">
				<p>
					<span class="title-footer">Feedback</span>
				</p>
				<form action="" method="post">
					<input class="footer-input" name="name" type="text"
						placeholder="Email">
					<textarea class="footer-input" name="age" rows="4" cols="50"
						placeholder="Content"></textarea>
					<button class="material-primary-button">Submit</button>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>