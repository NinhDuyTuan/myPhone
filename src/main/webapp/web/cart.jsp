<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-bold-straight/css/uicons-bold-straight.css'>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sh84-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style type="text/css">
	<%@ include file="css/style.css"%>
</style>
<title>Cart</title>
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="container">
		<form method="POST" action="${pageContext.request.contextPath}/PayController">
		<table class="table table-cart" style="width: 100%">
			<thead>
				<th>Products in cart:</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Amount</th>
			</thead>
			<tbody>
				<c:forEach var="item" items="${product.items}">
				<tr>
					<td><img alt="phone-image" src=${item.src } class="image"
						width="60px">
						<small>${item.name }</small></td>

					<td>
						<div class="">
							<small>$</small>${item.price}</div>
					</td>
					<td class="">
						<p >${item.number}</p>
					</td>
					<td>
						<fmt:formatNumber type="number" maxIntegerDigits="3" value="${item.number * item.price}" />		
					</td>
				</tr>
				</c:forEach>
				<br/>
			</tbody>
		</table>
		<div style="float:right"><strong>Total: ($)${sessionScope.myCartTotal}</strong></div>
		<br />
		<table id="cart-customer"style="width: 100%">
			<tr>
				<td class="col-4">Customer name:</td>
				<td class="col-8"><input type="text" name="name" value="" required></td>
			</tr>
			<tr>
				<td class="col-4">Customer address:</td>
				<td class="col-4"><input type="text" name="address"
					value="" required></td>
			</tr>
			
			<tr>
				<td class="col-4">Discount code (if any):</td>
				<td class="col-4"><input type="text" name="discount" value=""></td>
			</tr>
			<tr>
				<td colspan="2"><button class="cart-submit" type="submit">Submit</button></td>
				<td></td>
			</tr>
		</table>
		</form>
	</div>
	<c:import url="footer.jsp"></c:import>
</body>
</html>