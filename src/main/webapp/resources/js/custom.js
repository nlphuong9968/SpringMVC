$(document).ready(function() {
	$("#col1").click(function() {
		$(this).addClass("active");
	});

	$("#btnLogin").click(function() {
		var email = $("#email").val();
		var password = $("#password").val();
		
		$.ajax({
			url:"/minishop/api/CheckLogin",
			type:"GET",
			data: {
				email: email,
				password: password
			},
			success: function(value){
				if(value == "true"){
                    $('#result').text("success!");
				}else{
                    $('#result').text("false!");
				}
				
			}
		});
	});

})