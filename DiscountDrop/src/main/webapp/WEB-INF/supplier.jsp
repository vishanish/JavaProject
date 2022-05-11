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
	<div>
		<h1>Hello, ${user.firstName }</h1>
		<div>
		<table class ="table">
			<h3 style ="text-align:center; text-decoration:underline">Past Offers</h3>
			<thead>
				<tr>
					<th>Template Title</th>
					<th>Original Price</th>
					<th>Discount Price</th>
					<th>Category</th>
					<th>Created On</th>
					<th>Expiry Date</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var ="item" items="${items }">
					<tr>
						<td><c:out value ="${item.template }"></c:out></td>
						<td><c:out value ="${item.originalPrice }"></c:out></td>
						<td><c:out value ="${item.discountPrice }"></c:out></td>
						<td><c:out value ="${item.categories }"></c:out></td>
						<td><c:out value ="${item.createdAt }"></c:out></td>
						<td><c:out value ="${item.expiryDate }"></c:out></td>
						<td style="display:flex">
							<form action ="/merchant/${item.id}/edit" method = "post">
								<input type="hidden" name ="_method" value ="put" />
								<button class ="btn btn-primary">Edit</button>
							</form> &nbsp
							<form action ="/merchant/${item.id}/delete" method = "post">
								<input type="hidden" name ="_method" value ="delete" />
								<button class ="btn btn-danger">Delete</button>
							</form> 
						<td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
			<h3 style ="text-align:center; text-decoration:underline"">New Offers</h3>
		<div style ="display:flex; justify-content:center">
			<form:form  action = "/merchant/new" method = "post" modelAttribute = "newItem">
<%-- 				<input type="hidden" name ="_method" value = "put" />
				<form:hidden path="coupon" value ="${item.coupon.id}" /> --%>
				<div class ="form-group">	
				<form:label path = "template">Template Title: </form:label>
				<form:input path = "template" class = "form-control" />
				<form:errors path = "template" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "logoLink">Logo Link: </form:label>
				<form:input path = "logoLink" class = "form-control" />
				<form:errors path = "logoLink" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "businessName">Business Name: </form:label>
				<form:input path = "businessName" class = "form-control" />
				<form:errors path = "businessName" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "imageLink">Image Link: </form:label>
				<form:input path = "imageLink" class = "form-control" />
				<form:errors path = "imageLink" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "description">Description: </form:label>
				<form:textarea path = "description" class = "form-control" />
				<form:errors path = "description" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "originalPrice">Original Price: </form:label>
				<form:input path = "originalPrice" class = "form-control" />
				<form:errors path = "originalPrice" class = "text-danger" />
			</div><br />
			<div class ="form-group">	
				<form:label path = "discountPrice">Discount Price: </form:label>
				<form:input path = "discountPrice" class = "form-control" />
				<form:errors path = "discountPrice" class = "text-danger" />
			</div><br />
			<div>
				<form:label path = "categories" class = "form-label"> Select Your Category: </form:label><br />
				<form:select path = "categories" style = "text-align:center; width: 800px">
					<form:option value="Grocery" label="Grocery"/>
					<form:option value="Video Games" label="Video Games"/>
					<form:option value="TV" label="TV"/>
					<form:option value="Computers" label="Computers"/>
					<form:option value="Credit Cards" label="Credit Cards"/>
					<form:option value="Home" label="Home"/>
					<form:option value="Clothing & Accessories" label="Clothing & Accessories"/>
					<form:option value="Tech" label="Tech"/>
					<form:option value="Cameras" label="Cameras"/>
					<form:option value="Auto" label="Auto"/>
					<form:option value="Health & Beauty" label="Health & Beauty"/>
					<form:option value="Babies & Kids" label="Babies & Kids"/>
					<form:option value="Entertainment" label="Entertainment"/>
					<form:option value="Travel" label="Travel"/>
				</form:select>
			</div>
			<div class ="form-group">	
				<form:label path = "expiryDate">Expiry Date: </form:label>
				<form:input path = "expiryDate" class = "form-control" />
				<form:errors path = "expiryDate" class = "text-danger" />
			</div><br />
			<input style ="width:800px" type ="submit" value = "Create" class = "btn btn-primary"/>
			</form:form>
		</div>
	</div>
</body>
</html>