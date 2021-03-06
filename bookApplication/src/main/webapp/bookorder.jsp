<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.center {
	border: 5px solid grey;
	margin-left: auto;
	margin-right: auto;
	position: center;
	z-index: 30;
	max-width: 500px;
	margin: 100px auto;
	background-color: #DCDCDC;
}

.button {
	background-color: blue;
	color: white;
	padding: 10px 35px;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 45px;
}

tr:hover {
	background-color: #f5f5f5
}

th {
	background-color:black;
	color: white;
}
</style>

</head>
<body>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Book Application</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="/login.jsp">Home</a></li>
			<li><a href="/books">View Books</a></li>
			<li><a href="#">Contact us</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">

			<li><a href="/login.jsp"><span
					class="glyphicon glyphicon-log-out"></span> Log out</a></li>
		</ul>
	</div>
	</nav>
	
		<h3><center><b>${USER.name}</b></center></h3>
		
	<b>Item Details</b>


	<form action="../../orderItems/addToCart" method="post" >

		<input type="hidden" name="book_id" value="${books.id}" />
		<table>
			<tr>
				<th>Book Name</th>
				<th>Price</th>
				<th>Quantity</th>
			</tr>
			<tr>

				<td>${books.name}</td>

				<td>Rs. ${books.price}</td>
				<td><input type="number" name="qty" min="1" value="1" required /></td>


				<td><button>AddTo Cart</button></td>
				



			</tr>
		</table>
	</form>
</body>
</html>