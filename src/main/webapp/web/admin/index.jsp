<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="../css/style.css" rel="stylesheet">
<title>Admin Page</title>
</head>
<body id="background">
	<div >
		<div id="mySidenav" class="sidenav ">
			<p class="logo">
				<span>Phone </span>Web
			</p>
			<a href="#" class="icon-a"><i class="fa fa-dashboard icons"></i>Dashboard</a>
			<a href="#" class="icon-a"><i class="fa fa-users icons"></i>Customers</a>
			<a href="#" class="icon-a"><i class="fa fa-list icons"></i>Products</a>
			<a href="#" class="icon-a"><i class="fa fa-shopping-bag icons"></i>Orders</a>
			<a href="#" class="icon-a"><i class="fa fa-tasks icons"></i>Inventory</a>
			<a href="#" class="icon-a"><i class="fa fa-user icons"></i>Accounts</a>
			<a href="#" class="icon-a"><i class="fa fa-list-alt icons"></i>Tasks</a>
		</div>

		<div id="main">
			<div class="head row">

				<div class="col-6">
					<span style="font-size: 30px; cursor: pointer; color: white;"
						class="nav"> Dashboard </span> <span
						style="font-size: 30px; cursor: pointer; color: white;"
						class="nav2"> Dashboard </span>
				</div>

				<div class="col-6">
					<div class="profile  d-flex">
						<p> Welcome Duongdt</p>
						<a href="${pageContext.request.contextPath}/LogoutServlet">Logout</a>
					</div>
				</div>

				<div class="clearfix"></div>
			</div>
			<div class="row">
				<div class="col-3">
					<div class="box">
						<p>
							67<br />
							<span>Customer</span>
						</p>
						<i class=" fa fa-users box-icon"></i>
					</div>
				</div>
				<div class="col-3">
					<div class="box">
						<p>
							88<br />
							<span>Products</span>
						</p>
						<i class=" fa fa-list box-icon"></i>
					</div>
				</div>
				<div class="col-3">
					<div class="box">
						<p>
							99<br />
							<span>Orders</span>
						</p>
						<i class=" fa fa-shopping-bag box-icon"></i>
					</div>
				</div>
				<div class="col-3">
					<div class="box">
						<p>
							55<br />
							<span>Tasks</span>
						</p>
						<i class=" fa fa-tasks box-icon"></i>
					</div>
				</div>
				<div class="clearfix"></div>	
				<br/><br/>
			</div>
		</div>
	</div>
</body>
<script src="https://use.fontawesome.com/f75f5d4195.js"></script>
</html>