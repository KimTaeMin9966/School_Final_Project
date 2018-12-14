<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<!-- Mobile Metas -->
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	
	<!-- Site Metas -->
	<title>School Home Page</title>
	<meta name="keywords" content="">
	<meta name="description" content="학교 홈페이지입니다">
	<meta name="author" content="KimTaeMin">
	
	<!-- Site Icons -->
	<link href="${pageContext.request.contextPath}/resources/school/img/favicon.png" rel="icon">
	<link href="${pageContext.request.contextPath}/resources/school/img/apple-touch-icon.png" rel="apple-touch-icon">
	
	<!-- Online JS -->
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.12/handlebars.min.js" charset="utf-8"></script>
	
	<!-- Online CSS -->
	<link href="//fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">
	
	<!-- Offline JS -->
	<script src="${pageContext.request.contextPath}/resources/school/lib/jquery/jquery.min.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/bootstrap/js/bootstrap.min.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/php-mail-form/validate.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/prettyphoto/js/prettyphoto.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/isotope/isotope.min.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/hover/hoverdir.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/hover/hoverex.min.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/unveil-effects/unveil-effects.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/owl-carousel/owl-carousel.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/jetmenu/jetmenu.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/animate-enhanced/animate-enhanced.min.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/jigowatt/jigowatt.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/lib/easypiechart/easypiechart.min.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/js/main.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/js/bowser.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/js/upload.js?ver=20181211001" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/school/js/custom.js?ver=20181211001" charset="utf-8"></script>
	
	<!-- Offline CSS -->
	<link href="${pageContext.request.contextPath}/resources/school/lib/bootstrap/css/bootstrap.min.css?ver=20181211001" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/school/lib/font-awesome/css/font-awesome.min.css?ver=20181211001" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/school/lib/prettyphoto/css/prettyphoto.css?ver=20181211001" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/school/lib/hover/hoverex-all.css?ver=20181211001" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/school/lib/jetmenu/jetmenu.css?ver=20181211001" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/school/lib/owl-carousel/owl-carousel.css?ver=20181211001" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/school/css/style.css?ver=20181211001" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/school/css/colors/pomegranate.css?ver=20181211001" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/school/css/icomoon.css?ver=20181211001" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/school/css/custom.css?ver=20181211001" rel="stylesheet">
	<!-- Auto Include Files -->
</head>
<body>
	<!-- main header start -->
	<div class="topbar clearfix">
		<div class="container">
			<div class="col-lg-12 text-right">
				<div class="social_buttons">
					<a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook">
						<i class="fa fa-facebook"></i>
					</a>
					<a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter">
						<i class="fa fa-twitter"></i>
					</a>
					<a href="#" data-toggle="tooltip" data-placement="bottom" title="Google+">
						<i class="fa fa-google-plus"></i>
					</a>
					<a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble">
						<i class="fa fa-dribbble"></i>
					</a>
					<a href="#" data-toggle="tooltip" data-placement="bottom" title="RSS">
						<i class="fa fa-rss"></i>
					</a>
				</div>
			</div>
		</div>
		<!-- end container -->
	</div>
	<!-- end topbar -->
	
	<header class="header">
		<div class="container">
			<div class="site-header clearfix">
				<div class="col-lg-3 col-md-3 col-sm-12 title-area">
					<div class="site-title" id="title">
						<a href="/school" title="학교 홈피 메인으로 이동">
							<h4>MAXI<span>BIZ</span></h4>
						</a>
					</div>
				</div>
				<!-- title area -->
				<div class="col-lg-9 col-md-12 col-sm-12">
					<div id="nav" class="right">
						<div class="container clearfix">
							<ul id="jetmenu" class="jetmenu blue">
								<li class="active"><a href="/school">Home</a></li>
								<li>
									<a href="#">Pages</a>
									<ul class="dropdown">
										<li><a href="about.html">About Us</a></li>
										<li><a href="services.html">Services</a></li>
										<li><a href="team-members.html">Team Members</a></li>
										<li><a href="testimonials.html">Testimonials</a></li>
										<li><a href="404.html">404 Error</a></li>
										<li><a href="faq.html">FAQ Page</a></li>
										<li><a href="left-sidebar.html">Left Sidebar</a></li>
										<li><a href="right-sidebar.html">Right Sidebar</a></li>
										<li><a href="fullwidth.html">Full Width</a></li>
										<li><a href="login.html">Login</a></li>
										<li><a href="register.html">Register</a></li>
										<li><a href="contact.html">Contact</a></li>
									</ul>
								</li>
								<li>
									<a href="#">Shop</a>
									<ul class="dropdown">
										<li><a href="digital-download.html">Products Page</a></li>
										<li><a href="single-product.html">Single Product</a></li>
										<li><a href="checkout.html">Checkout</a></li>
										<li><a href="account.html">Account Page</a></li>
										<li><a href="support.html">Support Center</a></li>
									</ul>
								</li>
								<li>
									<a href="#">Portfolio</a>
									<ul class="dropdown">
										<li><a href="single-portfolio-1.html">Single Portfolio 1</a></li>
										<li><a href="single-portfolio-2.html">Single Portfolio 2</a></li>
										<li><a href="portfolio-2.html">Portfolio (2 Columns)</a></li>
										<li><a href="portfolio-3.html">Portfolio (3 Columns)</a></li>
										<li><a href="gallery-portfolio.html">Gallery</a></li>
										<li><a href="masonry-grid-portfolio.html">Masonry Grid Style</a></li>
									</ul>
								</li>
								<li>
									<a href="#">Blog</a>
									<ul class="dropdown">
										<li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
										<li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
										<li><a href="single-with-sidebar.html">Single with Sidebar</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<!-- nav -->
				</div>
				<!-- title area -->
			</div>
			<!-- site header -->
		</div>
		<!-- end container -->
	</header>
	<!-- end header -->
	
	<section id="intro">
		<div class="container">
			<div class="ror">
				<div class="col-md-8 col-md-offset-2">
					<h1>TITLE</h1>
					<p>SUB TITLE</p>
				</div>
			</div>
		</div>
	</section>
	<!-- main header end -->