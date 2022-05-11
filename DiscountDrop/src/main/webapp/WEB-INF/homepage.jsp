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
    <link rel="stylesheet" href="/css/style.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body  style ="background: linear-gradient(0.25turn, #3f87a6, #ebf8e1, #f69d3c)">
	<div class ="navbar" style = "margin:10px; background-image: linear-gradient(to right, rgba(255,0,0,1), rgba(255,0,0,0))" >
		<img src = "/img/discountdrop.png" style = "width:150px">
		<div>
			<h1 style ="color:green">Discount Drop</h1>
			<form>
				<input type="search" id="site-search" name="q">
				<button>Search</button>
			</form>
		</div>
		<p>
			<a href = "/logreg">Sign Up/In</a>
			<a href ="#">About Us</a>
		</p>
	</div>
	<div style = "background:white; padding:0px; margin:5px; display:flex; justify-content:space-around">
		<a href = "#"><img src ="/img/grocery.png">Grocery</a>
		<a href = "#"><img src ="/img/videogames.png">Video Games</a>
		<a href = "#"><img src ="/img/television.png">TV</a>
		<a href = "#"><img src ="/img/computers.png">Computers</a>
		<a href = "#"><img src ="/img/creditcard.png">Credit Cards</a>
		<a href = "#"><img src ="/img/home.png">Home</a>
		<a href = "#"><img src ="/img/canda.png">Clothing & Accessories</a>
		<a href = "#"><img src ="/img/tech.png">Tech</a>
		<a href = "#"><img src ="/img/camera.png">Cameras</a>
		<a href = "#"><img src ="/img/auto.png">Auto</a>
		<a href = "#"><img src ="/img/healthbeauty.png">Health & Beauty</a>
		<a href = "#"><img src ="/img/kies.png">Babies & Kids</a>
		<a href = "#"><img src ="/img/entertainment.png">Entertainment</a>
		<a href = "#"><img src ="/img/travel.png">Travel</a>
	</div>
	<div class="container">
	<div class="row">
		<div  class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
	<h2 style ="text-align:center">FEATURED</h2>
            <div style = "background:grey" class="MultiCarousel-inner">
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
            </div>
            <button class="btn btn-primary leftLst"><</button>
            <button class="btn btn-primary rightLst">></button>
        </div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
	<h2 style ="text-align:center">NEW DEALS</h2>
            <div style = "background:grey" class="MultiCarousel-inner">
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
            </div>
            <button class="btn btn-primary leftLst"><</button>
            <button class="btn btn-primary rightLst">></button>
        </div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
	<h2 style ="text-align:center">TRENDING</h2>
            <div style = "background:grey" class="MultiCarousel-inner">
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <img src ="/img/1.png" style ="width: 180px">
                    </div>
                </div>
            </div>
            <button class="btn btn-primary leftLst"><</button>
            <button class="btn btn-primary rightLst">></button>
        </div>
	</div>
</div>
</body>
<script type="text/javascript" src="/js/app.js"></script>
</html>