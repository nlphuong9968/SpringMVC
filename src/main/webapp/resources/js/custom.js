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
		var tenmau = $(this).closest("tr").find(".mau").text();
		var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
		var tensize = $(this).closest("tr").find(".size").text();
		var masize = $(this).closest("tr").find(".size").attr("data-masize");
		var soluong = $(this).closest("tr").find(".soluong").text();
		var tensp = $("#tensp").text();
		var masp = $("#tensp").attr("data-masp");
		var giatien = $("#giatien").attr("data-value");

		$.ajax({
			url: "/minishop/api/AddShoppingCart",
			type: "GET",
			data: {
				masp: masp,
				mamau: mamau,
				masize: masize,
				soluong: soluong,
				tensp: tensp,
				giatien: giatien,
				tenmau: tenmau,
				tensize: tensize
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
})