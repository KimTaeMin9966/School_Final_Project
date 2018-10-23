<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!-- Basic -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<!-- Mobile Metas -->
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	
	<!-- Site Metas -->
	<title>The Real Wedding - Responsive OnePage HTML5 Template</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<!-- Site Icons -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico"
		type="image/x-icon">
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/apple-touch-icon.png">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<!-- Pogo Slider CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pogo-slider.min.css">
	<!-- Site CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<!-- Responsive CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/responsive.css">
	<!-- Custom CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
	<!-- Icomoon CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
	
	<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body id="home" data-spy="scroll" data-target="#navbar-wd"
	data-offset="98">

	<!-- LOADER -->
	<div id="preloader">
		<div class="preloader pulse">
			<i class="fa fa-heartbeat" aria-hidden="true"></i>
		</div>
	</div><!-- end loader -->
	<!-- END LOADER -->

	<!-- Start header -->
	<header class="top-header">
		<nav class="navbar header-nav navbar-expand-lg">
			<div class="container">
				<a class="navbar-brand" href="/">
					<img src="${pageContext.request.contextPath}/resources/images/logo.jpg" alt="image" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbar-wd" aria-controls="navbar-wd"
					aria-expanded="false" aria-label="Toggle navigation">
					<span></span>
					<span></span>
					<span></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end" id="navbar-wd">
					<ul class="navbar-nav">
						<li><a class="nav-link active" href="#home">Home</a></li>
						<li><a class="nav-link" href="#about">About Us</a></li>
						<li><a class="nav-link" href="#story">Story</a></li>
						<li><a class="nav-link" href="#family">Family</a></li>
						<li><a class="nav-link" href="#gallery">Gallery</a></li>
						<li><a class="nav-link" href="#events">Events</a></li>
						<li><a class="nav-link" href="#contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

	<!-- Start Banner -->
	<div class="ulockd-home-slider">
		<div class="container-fluid">
			<div class="row">
				<div class="pogoSlider" id="js-main-slider">
					<div class="pogoSlider-slide" data-transition="zipReveal"
						data-duration="1500"
						style="background-image:url(${pageContext.request.contextPath}/resources/images/slider-01.jpg);">
						<div class="lbox-caption">
							<div class="lbox-details">
								<h1>#Leida & #Dominic</h1>
								<h2>We're getting married</h3>
								<p>Save The Date <strong>20 June 2018</strong></p>
								<a href="#" class="btn ">Contact</a>
							</div>
						</div>
					</div>
					<div class="pogoSlider-slide" data-transition="blocksReveal" data-duration="1500"
						style="background-image:url(${pageContext.request.contextPath}/resources/images/slider-02.jpg);">
						<div class="lbox-caption">
							<div class="lbox-details">
								<h1>#Leida & #Dominic</h1>
								<h2>We're getting married</h3>
								<p>Save The Date <strong>20 June 2018</strong></p>
								<a href="#" class="btn ">Contact</a>
							</div>
						</div>
					</div>
					<div class="pogoSlider-slide" data-transition="shrinkReveal" data-duration="2000"
						style="background-image:url(${pageContext.request.contextPath}/resources/images/slider-03.jpg);">
						<div class="lbox-caption">
							<div class="lbox-details">
								<h1>#Leida & #Dominic</h1>
								<h2>We're getting married</h3>
								<p>Save The Date <strong>20 June 2018</strong></p>
								<a href="#" class="btn">Contact</a>
							</div>
						</div>
					</div>
				</div>
				<!-- .pogoSlider -->
			</div>
		</div>
	</div>
	<!-- End Banner -->