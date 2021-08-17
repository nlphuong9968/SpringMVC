$(document).ready(function() {
	$("#col1").click(function() {
		$(this).addClass("active");
	});

	$("#col1").click(function() {
		var str = $("#col1").attr("data-text");
		alert(str);
	});

})