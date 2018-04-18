<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		.red{
			color: red;
			font-weight: bold;
		}
		.blue{
			color: blue;
		}
	</style>
</head>
<body>
	<input type="text" name="email" id="inp" onblur="checkEmail(this)">
	<p id="message"></p>
	
	<script src="js/jquery-1.8.3.js"></script>
	<script>
	
		function checkEmail(oInput) {
			var email = oInput.value;
			if (email == "" || email == null) {
				$("#message").html("不能为空");
				return;
			}
			
			$.get("verifyEmail.action", {
				email : email
			}, function(message) {
				$("#message").html(message);
			});
		}
	
	</script>
</body>
</html>