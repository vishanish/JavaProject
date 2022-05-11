<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Discount Drop</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style ="background: linear-gradient(0.25turn, #3f87a6, #ebf8e1, #f69d3c); padding-bottom: 15px">
	<div class ="navbar" style = "margin:10px; background-image: linear-gradient(to right, rgba(255,0,0,1), rgba(255,0,0,0))" >
		<img src = "/img/discountdrop.png" style = "width:150px">
		<h1 style ="color:green">Discount Drop</h1>
		<p>
			<a href = "/logout">Logout</a>
			<a href ="#">About Us</a>
		</p>
	</div>
	<div class="container mt-5">
		<h1>Hello, ${user.firstName }</h1>
	</div>
	<div>
		<h3 style ="text-align:center">Here Are the Categories You Selected</h3>
	</div>
	<div>
		<h3 style ="text-align:center">Here Are Your Coupons</h3>
	</div>
	<form style ="padding:10px">
	<div>
		<h3 style ="text-align:center">Please Select Which One You Would Like To Be Notified About:</h3>
		<div class="col-md">
			<p><input type="checkbox" name="" value="Grocery"/>Grocery</p>
			<p><input type="checkbox" name="" value="Video Games"/>Video Games</p>
			<p><input type="checkbox" name="" value="Tv"/>Tv</p>
			<p><input type="checkbox" name="" value="Computers"/>Computers</p>
			<p><input type="checkbox" name="" value="Credit Cards"/>Credit Cards</p>
			<p><input type="checkbox" name="" value="Home"/>Home</p>
			<p><input type="checkbox" name="" value="Clothing & Accessories"/>Clothing & Accessories</p>
		</div>
		<div class="col-md">
			<p><input type="checkbox" name="" value="Tech"/>Tech</p>
			<p><input type="checkbox" name="" value="Cameras"/>Cameras</p>
			<p><input type="checkbox" name="" value="Auto"/>Auto</p>
			<p><input type="checkbox" name="" value="Health & Beauty"/>Health & Beauty</p>
			<p><input type="checkbox" name="" value="Babies & Kids"/>Babies & Kids</p>
			<p><input type="checkbox" name="" value="Entertainment"/>Entertainment</p>
			<p><input type="checkbox" name="" value="Travel"/>Travel</p>
		</div>	
			<p><input type="submit" value="submit" />
	</div>
	</form>
</body>
</html>