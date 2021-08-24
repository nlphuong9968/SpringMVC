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
                    currentPath = window.location.href;
                    path = currentPath.replace("login/","");
                    window.location = path;
				}else{
                    $('#result').text("false!");
				}
				
			}
		});
	});
	$("#signin").click(function(){
		$(this).addClass("active");
		$("#signup").removeClass("active");
		$("#container-signin").show();
		$("#container-signup").hide();
	})
	$("#signup").click(function(){
		$(this).addClass("active");
		$("#signin").removeClass("active");
		$("#container-signin").hide();
		$("#container-signup").show();
	})
})