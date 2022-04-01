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
<title>Search</title>
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="container m-3">
		<div class="card-list d-flex">
			<c:forEach var="product" items="${product }">
				<div class="card-menu card text-center">
					<a href="${pageContext.request.contextPath}/InformationProductController?id=${product.id}" ><img alt=phone-image src= ${product.src } class="card-image"></a>
					<div class="card-content mt-3">
						
						<div class="card-type">${product.type }</div>
						<a href="${pageContext.request.contextPath}/InformationProductController?id=${product.id}" ><div class="card-name">${product.name }</div></a>
						<div class="cart-price">$${product.price }</div>
						
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<c:import url="footer.jsp"></c:import>
</body>
</html>