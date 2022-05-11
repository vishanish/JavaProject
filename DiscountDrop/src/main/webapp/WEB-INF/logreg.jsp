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
    <title>Discount Drop Login/Registration</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style ="background: linear-gradient(0.25turn, #3f87a6, #ebf8e1, #f69d3c)">
	<div class ="navbar" style = "margin:10px; background-image: linear-gradient(to right, rgba(255,0,0,1), rgba(255,0,0,0))" >
		<img src = "/img/discountdrop.png" style = "width:150px">
			<h1 style ="color:green">Discount Drop</h1>
		<p>
			<a href = "/">Go Home</a>
			<a href ="#">About Us</a>
		</p>
	</div>
	<div class="container mt-5">
		<div style = "background:white; margin-left: 200px;  margin-right: 200px; padding-top:30px; padding-bottom:30px; border: 3px solid green">
		<h2 style = "text-align:center">Register</h2>
		<div style ="display:flex; justify-content:center" >
		<form:form  action = "/register" method = "post" modelAttribute = "newUser" >
			<div class ="form-group">	
				<form:label path = "firstName">First Name: </form:label>
				<form:input path = "firstName" class = "form-control" />
				<form:errors path = "firstName" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "lastName">Last Name: </form:label>
				<form:input path = "lastName" class = "form-control" />
				<form:errors path = "lastName" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "userName">User Name: </form:label>
				<form:input path = "userName" class = "form-control" />
				<form:errors path = "userName" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "email">Email: </form:label>
				<form:input path = "email" class = "form-control" />
				<form:errors path = "email" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "password">Password: </form:label>
				<form:password path = "password" class = "form-control"/>
				<form:errors path = "password" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "confirm">Confirm Password: </form:label>
				<form:password path = "confirm" class = "form-control" />
				<form:errors path = "confirm" class = "text-danger" />
			</div><br />
			<div>
				<form:label path = "permission" class = "form-label"> Are you a Business Owner or Customer? </form:label>
				<form:select path="permission" style ="width: 500px">
					<form:option value="Merchant" label="Merchant"/>
					<form:option value="Customer" label="Customer"/>
				</form:select>
				</div><br />
			<input style ="width:800px" type ="submit" value = "Register" class = "btn btn-primary"/>
		</form:form>
		</div>
		</div>
		<br />
		
		<div style = "background:white; margin-left: 200px;  margin-right: 200px; padding-top:30px; padding-bottom:30px; border: 3px solid green">
		<h2 style = "text-align:center">Login</h2>
		<div style="display:flex; justify-content:center"  >
		<form:form action = "/login" method = "post" modelAttribute = "newLogin">
			<div class = "form-group">	
				<form:label path = "email">Email: </form:label>
				<form:input path = "email" class = "form-control" style ="width:800px"/>
				<form:errors path = "email" class = "text-danger" />
			</div><br />
			<div class = "form-group">	
				<form:label path = "password">Password: </form:label>
				<form:password path = "password" class = "form-control" style ="width:800px"/>
				<form:errors path = "password" class = "text-danger" />
			</div><br />
			<input style ="width:800px" type ="submit" value = "Login" class = "btn btn-primary" />
		</form:form>
		</div>
		</div><br />
	</div>
</body>
</html>