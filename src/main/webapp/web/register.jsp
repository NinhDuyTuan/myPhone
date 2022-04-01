<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href = "${pageContext.request.contextPath}/web/css/style.css" rel = "stylesheet">
<title>Register</title>
</head>
<body>

	<div class="modal-login text-center">
		<div class = "d-flex body-login">
			<div class="modal-close">
				<i class="fi fi-br-cross"></i>
			</div>
			<div class="left-login">
				<div class="body-leftLogin p-5">
					<h2><strong>Sign up</strong></h2>
					<span style="color: red">${error}</span>
					<div class="login-container">
		 				<form method ="POST" action="${pageContext.request.contextPath}/login">
	 						<input class="m-2" type="email" name ="username" placeholder=" Enter your email.." required><br/>
	 				
	 						<input class="m-2" type="text" name="password" placeholder=" Enter your password.." required><br/>
	 						<b><i>Remember me</i></b> <input type="checkbox" name="remember" value = "1" checked = "checked"/>		
	 						
	 						<button class="button-login text-center" type="submit">Login</button>
	 					</form>
	 				</div>
				</div>
			</div>
			<div class="text-center right-login p-5">
				<h2><strong>Welcome Back!</strong></h2>
				<p>To keep connected with us
				please login with your personal info</p>
			
			</div>
		</div>
	</div>

</body>
</html>