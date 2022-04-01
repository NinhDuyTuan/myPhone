<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sh84-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">
<%@ include file="css/style.css"%>
</style>
<title>${product.brand},${product.name}</title>
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="container">	
				<div class="">
					<div class="card-info-name">${product.name }</div>
					<hr>
					<div class="card-info d-flex mt-3">
						<img height="400px" alt=phone-image src= ${product.src} class="">
						<div class="card-content text-center">
							
							<div class="card-info-price">$${product.price }</div>
							<div class="card-info-desc">${product.description}</div>
							<form method="POST" action="${pageContext.request.contextPath}/AddToCartController?id=${product.id}">
								<button class="cart-info-button mt-3" type="submit" name="action" value="add"> Add to cart</button>
							</form>
						</div>
					</div>
				</div>
		
	</div>
	<c:import url="footer.jsp"></c:import>
</body>
</html>