
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
							aria-expanded="false">Category <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<c:forEach var="dm" items="${danhmuc}">
									<li><a href="product/${dm.getMadanhmuc()}/${dm.getTendanhmuc() }">${dm.getTendanhmuc() }</a></li>
									<li role="separator" class="divider"></li>
								</c:forEach>
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
								src='<c:url value="/resources/img/shopping-cart.png" />' />
								<c:if test="${quantityPro > 0 }">
								<div class="circle-cart"><span>${quantityPro }</span></div>
								</c:if>
								<c:if test="${quantityPro <= 0  || quantityPro == null}">
								<div><span>${quantityPro }</span></div>
								</c:if>
						</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	</div>

	<div class="container">
		<div class="row" style="margin-top: 16px;">
			<div class="col-sm-2 col-md-2">
				<h3>Category</h3>
				<ul class="menu-detail">
					<c:forEach var="dm" items="${danhmuc}">
						<li><a href="#">${dm.getTendanhmuc() }</a></li>
					</c:forEach>					
				</ul>
			</div>
			<div class="col-sm-8 col-md-8">
				<div class="row">
					<div class="col-sm-5 col-md-5">
						<img id="img" data-img="${sanPham.getHinhsanpham() }" alt=""
							src='<c:url value="/resources/img/product/${sanPham.getHinhsanpham() }" />' />
					</div>
					<div class="col-sm-7 col-md-7">
						<h3 id="tensp" data-masp="${sanPham.getMasanpham() }">${sanPham.getTensanpham() }</h3>
						<h4 id="giatien" data-value="${sanPham.getGiatien() }" style="color: red">
						<fmt:setLocale value = "vi_VN" scope="session"/>
         				<fmt:formatNumber value = "${fn:trim(sanPham.getGiatien()) }" type = "currency"/></h4>
						<table class="table">
							<thead>
								<td><h5>M??u</h5></td>
								<td><h5>Size</h5> </td>
								<td><h5>S??? l?????ng</h5></td>
							</thead>
							<tbody>
								<c:forEach var="ctSanPham"
									items="${sanPham.getChiTietSanPhams()}">
									<tr>
										<td class="mau" data-mamau="${ctSanPham.getMauSanPham().getMamau() }">${ctSanPham.getMauSanPham().getTenmau() }</td>
										<td class="size" data-masize="${ctSanPham.getSizeSanPham().getMasize() }">${ctSanPham.getSizeSanPham().getSize() }</td>
										<td class="soluong" >${ctSanPham.getSoluong() }</td>
										<td><button data-machitietsp="${ctSanPham.getMachitietsanpham()}" class="btn btn-success btn-cart">Gi??? h??ng</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-sm-2 col-md-2">
				<h3>M?? T???</h3>
				<span>${sanPham.getMota() }</span>
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
					women, men and kids??? garments, as well as of shoes, bags and
					accessories Brands provided by Paris and Aubervilliers best
					wholesalers.</span>
			</div>

			<div class="col-sm-4 col-md-4 ">
				<p>
					<span class="title-footer">Contact</span>
				</p>
				<span>- Head office : 91 rue du Faubourg-Saint-Honor?? 75008
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