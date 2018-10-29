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
	<title>Made Wedding - MW</title>
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
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
	
	<!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
	
	<!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="${pageContext.request.contextPath}/resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="${pageContext.request.contextPath}/resources/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    
    <!-- jQuery 2.1.4 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	
	<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body id="home" data-spy="scroll" data-target="#navbar-wd"
	data-offset="98">

	<!-- LOADER -->
	<!-- <div id="preloader">
		<div class="preloader pulse">
			<i class="fa fa-heartbeat" aria-hidden="true"></i>
		</div>
	</div> -->
	<!-- END LOADER -->

	<!-- Start header -->
	<div id="page">
	<header class="force-repaint-width move-header-if-lt-ie10 header__bg-transparent" id="header-main">
		<div class="logo">
			<a tabindex="5" href="/">Made Wedding - MW</a>
		</div>
		<nav id="header-nav" class="header-nav-group">
			<div id="header-nav-child-main" class="header-nav-child header-nav-drawer">
				<ul class="header-nav-sections" role="menubar">
					<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
						<div class="header-nav-section-title">
							<a data-di-id="runway_1"
							class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
							href="/wedding/ready" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">준비</a>
						</div>
					</li>
					<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
						<div class="header-nav-section-title">
							<a data-di-id="runway_1"
							class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
							href="/wedding/consulting" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">컨설팅</a>
						</div>
					</li>
					<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
						<div class="header-nav-section-title">
							<a data-di-id="runway_1"
							class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
							href="/wedding/hall" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">웨딩홀</a>
						</div>
					</li>
					<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
						<div class="header-nav-section-title">
							<a data-di-id="runway_1"
							class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
							href="/wedding/studio" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">스튜디오</a>
						</div>
					</li>
					<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
						<div class="header-nav-section-title">
							<a data-di-id="runway_1"
							class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
							href="/wedding/list/step1" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">체크리스트</a>
						</div>
					</li>
					<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
						<div class="header-nav-section-title">
							<a data-di-id="runway_1"
							class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
							href="/wedding/send" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">청첩장</a>
						</div>
					</li>
					<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
						<div class="header-nav-section-title">
							<a data-di-id="runway_1"
							class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
							href="/wedding/milo" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">Milo</a>
						</div>
					</li>
				</ul>
				<ul class="header-nav-user header-nav-secondary" style="--menu-right-pos: 141px">
					<li id="header-nav-signin" class="header-nav-group header-nav-group-hover header-nav-sign-in-group">
						<a id="header-nav-signin-anchor"
							class="header-nav-parent-account header-nav-anchor header-nav-parent-link-medium header-nav-item"
							href="/member/register" tabindex="6">회원가입</a>
					</li>
				</ul>
			</div>
		</nav>
		<nav id="header-nav-bag-wrapper" class="header-nav-bag-wrapper header-nav-group header-nav-group-hover header-nav-child-bag-empty" data-module="headerUpdate">
			<a class="header-nav-parent-bag header-nav-parent header-nav-parent header-nav-parent-link header-nav-parent-link-standard" tabindex="8" href="/member/login" id="header-nav-bag-anchor" aria-expanded="false">
				<span class="title"><span>로그인</span></span>
			</a>
		</nav>
	</header></div>
	<!-- End header -->
	<div style="height: 20%; width: 100%"></div>