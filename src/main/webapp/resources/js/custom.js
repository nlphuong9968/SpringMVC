$(document).ready(function() {
	$("#col1").click(function() {
		$(this).addClass("active");
	});

	$("#btnLogin").click(function() {
		var email = $("#email").val();
		var password = $("#password").val();

		$.ajax({
			url: "/minishop/api/CheckLogin",
			type: "GET",
			data: {
				email: email,
				password: password
			},
			success: function(value) {
				if (value == "true") {
					$('#result').text("success!");
					currentPath = window.location.href;
					path = currentPath.replace("login/", "");
					window.location = path;
				} else {
					$('#result').text("false!");
				}

			}
		});
	});
	$("#signin").click(function() {
		$(this).addClass("active");
		$("#signup").removeClass("active");
		$("#container-signin").show();
		$("#container-signup").hide();
	})
	$("#signup").click(function() {
		$(this).addClass("active");
		$("#signin").removeClass("active");
		$("#container-signin").hide();
		$("#container-signup").show();
	})

	$(".btn-cart").click(function() {
		var machitietsp = $(this).attr("data-machitietsp");
		var tenmau = $(this).closest("tr").find(".mau").text();
		var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
		var tensize = $(this).closest("tr").find(".size").text();
		var masize = $(this).closest("tr").find(".size").attr("data-masize");
		var soluong = $(this).closest("tr").find(".soluong").text();
		var tensp = $("#tensp").text();
		var masp = $("#tensp").attr("data-masp");
		var giatien = $("#giatien").attr("data-value");
		var img = $("#img").attr("data-img");

		$.ajax({
			url: "/minishop/api/AddShoppingCart",
			type: "GET",
			data: {
				masp: masp,
				mamau: mamau,
				masize: masize,
				soluong: parseInt(soluong),
				tensp: tensp,
				giatien: giatien,
				tenmau: tenmau,
				tensize: tensize,
				image: img,
				machitietsp: machitietsp
			},
			success: function(value) {
				$("#cart").find("div").addClass("circle-cart");
				$("#cart").find("div").html("<span>" + value + "</span>");
			}
		});
		/*}).done(function() {
			$.ajax({
				url: "/minishop/api/GetQuantityCart",
				type: "GET",
				success: function(value) {
					$("#cart").find("div").addClass("circle-cart");
					$("#cart").find("div").html("<span>" + value + "</span>");

				}
			});
		});*/
	})

	assignSumMoney();

	function assignSumMoney(isChange) {
		var tongtiensp = 0;
		if (!isChange) {
			$(".giatien").each(function() {
				
				var soluong = $(this).closest("tr").find(".soluong-cart").val();
		
				var giatien = $(this).text();

				giatien = (parseInt(giatien) / 1000)* parseInt(soluong);

				var format = giatien.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
				$(this).html(format);

				tongtiensp = tongtiensp + parseFloat(giatien);

				var formatTongTien = tongtiensp.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();

				$("#tongtien").html(formatTongTien);
			});
		}
		if (isChange) {
			$(".giatien").each(function() {
				var giatien = $(this).text();

				giatien = giatien.split('.').join("");

				tongtiensp = tongtiensp + parseInt(giatien)/1000;

				var formatTongTien = tongtiensp.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();

				$("#tongtien").html(formatTongTien);
			});
		}
	}

	$(".soluong-cart").change(function() {
		var soluong = $(this).val();
		var giatien = $(this).closest("tr").find(".giatien").attr("data-giatien");
		
		giatien = giatien / 1000;

		var tongtien = soluong * giatien;

		/* Format Currency */
		var format = tongtien.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();

		$(this).closest("tr").find(".giatien").html(format);
		assignSumMoney(true, soluong);
		
		
		var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
		var masize = $(this).closest("tr").find(".size").attr("data-masize");
		var masp = $(this).closest("tr").find(".tensp").attr("data-masp");
		
		$.ajax({
			url: "/minishop/api/UpdateQuantityCart",
			type: "GET",
			data: {
				masp: masp,
				mamau: mamau,
				masize: masize,
				soluongcart: soluong
			},
			success: function(value) {
				
			}
		});
	})
	
	/*$(".soluong-cart").blur(function(){
		var soluong = $(this).val();
		var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
		var masize = $(this).closest("tr").find(".size").attr("data-masize");
		var masp = $(this).closest("tr").find(".tensp").attr("data-masp");
		
		$.ajax({
			url: "/minishop/api/UpdateQuantityCart",
			type: "GET",
			data: {
				masp: masp,
				mamau: mamau,
				masize: masize,
				soluongcart: soluong
			},
			success: function(value) {
				
			}
		});
	})*/
	
	$(".delete-cart").click(function(){
		var self = $(this);
		var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
		var masize = $(this).closest("tr").find(".size").attr("data-masize");
		var masp = $(this).closest("tr").find(".tensp").attr("data-masp");
		
		$.ajax({
			url: "/minishop/api/DeleteCart",
			type: "GET",
			data: {
				masp: masp,
				mamau: mamau,
				masize: masize
			},
			success: function(value) {
				self.closest("tr").remove();
				assignSumMoney(true);
			}
		});
	})
	
	$("body").on("click",".paging", function(){
		$(".paging").removeClass("active");
		$(this).addClass("active");
		var numPage = $(this).text();
		var indexStart = (numPage - 1)*3;
		
		$.ajax({
			url: "/minishop/api/getNumPage",
			type: "GET",
			data: {
				indexStart : indexStart
			},
			success: function(value) {
				var tbodysp = $("#table-product").find("tbody");
				tbodysp.empty();
				tbodysp.append(value);
			}
		});
	});
	
})