<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-bold-rounded/css/uicons-bold-rounded.css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href = "css/style.css" rel = "stylesheet">
</head>
<body>
	<div class="header container-fluid  ">
		<div class="row header-top">
			<div class = "header-name col-2 ">
				<a href ="${pageContext.request.contextPath}/home"><img width="100px" src="${pageContext.request.contextPath}/web/media/logohome.png" alt = "logo home"></a>
	 		</div>
	 		<div class="search-container col-6">
	 			<form method="POST" action="${pageContext.request.contextPath}/SearchController2">
	 				<input class="search-bar" type="text" value="${search}"required name ="search" placeholder="What are you looking for?..">
	 				<button type="submit"><i class="search-button fa fa-search"></i></button>
	 			</form>
	 		</div> 
	 		<div class="sub-header col-4">
	 			<a class="p-2"href="#">Thông tin hay</a>
	 			<a class="p-2"href="#">Hóa đơn</a>
	 			<a class="p-2"href="${pageContext.request.contextPath}/web/cart.jsp">Giỏ hàng</a>	
			 </div>
		</div>
	</div>
	
	 <div class="topnav container-fluid ">
	 	<a class="p-2 m-4"href="${pageContext.request.contextPath}/home">Home</a>
	 	<a class="p-2 m-4"href="#">Product</a> 
	 	<a class="p-2 m-4"href="#">About us</a>
	 	<a class="p-2 m-4"href="${pageContext.request.contextPath}/web/login.jsp">Login</a>
	 	<a class="p-2 m-4"href="${pageContext.request.contextPath}/web/login.jsp">Register</a>
	 </div>
</body>
<script src="https://use.fontawesome.com/f75f5d4195.js"></script>
</html>