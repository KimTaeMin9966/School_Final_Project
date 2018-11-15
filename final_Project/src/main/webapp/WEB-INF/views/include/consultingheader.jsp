<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html class="js gt-ie9 gt-ie8 gt-ie7 gt-ie6  applicationcache geolocation history svg hashchange audio canvas canvastext video cssgradients multiplebgs opacity rgba inlinesvg hsla supports svgclippaths fontface generatedcontent textshadow cssanimations backgroundsize borderimage borderradius boxshadow csscolumns csscolumns-width csscolumns-span csscolumns-fill csscolumns-gap csscolumns-rule csscolumns-rulecolor csscolumns-rulestyle csscolumns-rulewidth csscolumns-breakbefore csscolumns-breakafter csscolumns-breakinside flexbox flexboxlegacy cssreflections csstransforms csstransforms3d csstransitions objectfit object-fit no-touchevents no-touch no-android noFlash chrome windows no-ios no-playsinline desktop"
	lang="ko" dir="ltr" xmlns:fb="http://www.facebook.com/2008/fbml" xmlns:og="http://opengraphprotocol.org/schema" style=""
	data-browser-name="Chrome" data-browser-version="70.0">
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
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/apple-touch-icon.png">
	
	<!-- Online JS -->
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.12/handlebars.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22b50259bb16606eb70dbabc94232219&libraries=LIBRARY,services,clusterer,drawing"></script>
	
	<!-- Online CSS -->
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
	
	<!-- Offline JS -->
	<script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.4.min.js?ver=20181113001"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js?ver=20181113001"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js?ver=20181113001"></script>
	<script src="${pageContext.request.contextPath}/resources/js/modal.js?ver=20181113001"></script>
	<script src="${pageContext.request.contextPath}/resources/js/upload.js?ver=20181113001"></script>
	<script src="${pageContext.request.contextPath}/resources/js/custom.js?ver=20181113001"></script>
	
	<!-- Offline CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css?ver=20181113001">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?ver=20181113001">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css?ver=20181113001">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?ver=20181113001">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css?ver=20181113001">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css?ver=20181113001">
</head>
<body class="country-INT page-HP-INT-Launch-Cruise-19 pageType-ContentPage template-pages--home-homepage pageLabel-  language-en int nonTransactional hasGiantLookWithManualImage"
	data-module="keysNavigation,keysNavigationOverlay," data-switchsite="/int/en/ajax/overlay">
	<div id="mobile-menu" class="mm-menu mm-fullscreen mm-multiline mm-offcanvas mm-top mm-front mm-hasnavbar-top-1 primary-menu-opened mm-current mm-opened">
		<div class="mm-panels">
			<div class="mm-panel mm-opened mm-current">
				<ul class="mmenu-item menu-first-level flex-container mm-listview visible">
					<li class="item-primary flex-item">
						<a class="mm-next mm-fullsubopen _gaMenuTracking" href="/wedding/consulting" data-target="#mm-2" data-di-id="runway_1"></a>
						<span class="flex-item-content" data-di-id="runway_1">CONSULTING</span>
					</li>
					<li class="item-primary flex-item">
						<a class="mm-next mm-fullsubopen _gaMenuTracking" href="/wedding/hall" data-target="#mm-2" data-di-id="runway_1"></a>
						<span class="flex-item-content" data-di-id="runway_1">WEDDING HALL</span>
					</li>
					<li class="item-primary flex-item">
						<a class="mm-next mm-fullsubopen _gaMenuTracking" href="/wedding/studio" data-target="#mm-2" data-di-id="runway_1"></a>
						<span class="flex-item-content" data-di-id="runway_1">WEDDING STUDIO</span>
					</li>
					<li class="item-primary flex-item">
						<a class="mm-next mm-fullsubopen _gaMenuTracking" href="/wedding/list" data-target="#mm-2" data-di-id="runway_1"></a>
						<span class="flex-item-content" data-di-id="runway_1">CHECK LIST</span>
					</li>
					<li class="item-primary flex-item">
						<a class="mm-next mm-fullsubopen _gaMenuTracking" href="/wedding/send" data-target="#mm-2" data-di-id="runway_1"></a>
						<span class="flex-item-content" data-di-id="runway_1">WEDDING LETTER</span>
					</li>
					<li class="item-primary flex-item">
						<a class="mm-next mm-fullsubopen _gaMenuTracking" href="/wedding/money" data-target="#mm-2" data-di-id="runway_1"></a>
						<span class="flex-item-content" data-di-id="runway_1">가격 검색</span>
					</li>
					<li class="item-primary flex-item">
						<a class="mm-next mm-fullsubopen _gaMenuTracking" href="/wedding/concept" data-target="#mm-2" data-di-id="runway_1"></a>
						<span class="flex-item-content" data-di-id="runway_1">컨셉 검색</span>
					</li>
					<c:choose>
						<c:when test="${!empty loginYES && loginYES.mwid eq 'master'}">
							<li class="item-primary flex-item">
								<a class="mm-next mm-fullsubopen _gaMenuTracking" href="/management/hall" data-target="#mm-2" data-di-id="runway_1"></a>
								<span class="flex-item-content" data-di-id="runway_1">웨딩홀 관리</span>
							</li>
							<li class="item-primary flex-item">
								<a class="mm-next mm-fullsubopen _gaMenuTracking" href="/management/studio" data-target="#mm-2" data-di-id="runway_1"></a>
								<span class="flex-item-content" data-di-id="runway_1">스튜디오 관리</span>
							</li>
							<li class="item-primary flex-item">
								<a class="mm-next mm-fullsubopen _gaMenuTracking" href="/management/member" data-target="#mm-2" data-di-id="runway_1"></a>
								<span class="flex-item-content" data-di-id="runway_1">회원 관리</span>
							</li>
						</c:when>
					</c:choose>
				</ul>
			</div>
		</div>
		<a class="mm-close mm-btn btn-close-primary-menu" href="#mm-0"></a>
	</div>
	<!-- page start -->
	<div id="mm-0" class="mm-page mm-slideout">
		<div id="page" class="_position-special">
			<div id="compressed-header-scroll-target"></div>
			<!-- main-header start -->
			<header class="force-repaint-width move-header-if-lt-ie10 header__bg-transparent" id="header-main">
				<!-- logo -->
				<div class="logo">
					<a tabindex="5" href="/">MADE WEDDING</a>
				</div>
				<div class="header-mobile-buttons-wrapper">
					<a class="header-nav-parent-storelocator" href="/member/logOut" aria-hidden="true">
						<span class="title">Sign Out</span>
					</a>
					<a class="header-nav-parent-search" href="#" aria-hidden="true">
						<span class="title">Search</span>
					</a>
				</div>
				<a id="header-nav-mobile" class="header-nav-parent-main header-ssa-display-mobile" href="#" data-module="headerUpdate">Menu</a>
				<nav id="header-nav" class="header-nav-group">
					<div id="header-nav-child-main" class="header-nav-child header-nav-drawer">
						<!-- nav start -->
						<ul class="header-nav-sections" role="menubar">
							<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
								<div class="header-nav-section-title">
									<a data-di-id="runway_1"
										class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
										href="/wedding/consulting" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">CONSULTING</a>
								</div>
							</li>
							<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
								<div class="header-nav-section-title">
									<a data-di-id="runway_1"
										class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
										href="/wedding/hall" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">WEDDING HALL</a>
								</div>
							</li>
							<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
								<div class="header-nav-section-title">
									<a data-di-id="runway_1"
										class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
										href="/wedding/studio" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">WEDDING STUDIO</a>
								</div>
							</li>
							<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
								<div class="header-nav-section-title">
									<a data-di-id="runway_1"
										class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
										href="/wedding/list" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">CHECK LIST</a>
								</div>
							</li>
							<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
								<div class="header-nav-section-title">
									<a data-di-id="runway_1"
										class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
										href="/wedding/send" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">WEDDING LETTER</a>
								</div>
							</li>
							<c:choose>
								<c:when test="${!empty loginYES && loginYES.mwid eq 'master'}">
									<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
										<div class="header-nav-section-title">
											<a data-di-id="runway_1"
												class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
												href="/management/hall" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">웨딩홀 관리</a>
										</div>
									</li>
									<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
										<div class="header-nav-section-title">
											<a data-di-id="runway_1"
												class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
												href="/management/studio" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">스튜디오 관리</a>
										</div>
									</li>
									<li class="header-nav-section header-nav-section-0 header-nav-group header-nav-group-hover">
										<div class="header-nav-section-title">
											<a data-di-id="runway_1"
												class="_gaMenuTracking header-nav-parent header-nav-parent-mutually-exclusive header-nav-parent-link"
												href="/management/member" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">회원 관리</a>
										</div>
									</li>
								</c:when>
							</c:choose>
						</ul>
						<!-- nav end -->
						<!-- nav2 start -->
						<ul class="header-nav-user header-nav-secondary" style="--menu-right-pos: 141px">
							<li id="header-nav-signin" class="header-nav-group header-nav-group-hover header-nav-sign-in-group">
								<c:choose>
									<c:when test="${!empty loginYES}">
										<a id="header-nav-signin-anchor"
											class="header-nav-parent-account header-nav-anchor header-nav-parent-link-medium header-nav-item"
											href="/member/logOut" tabindex="6">Sign Out</a>
									</c:when>
									<c:otherwise>
										<a id="header-nav-signin-anchor"
											class="header-nav-parent-account header-nav-anchor header-nav-parent-link-medium header-nav-item"
											href="/member/register" tabindex="6">Sign Up</a>
									</c:otherwise>
								</c:choose>
							</li>
						</ul>
						<!-- nav2 end -->
					</div>
				</nav>
				<!-- userInfo start -->
				<nav id="header-nav-bag-wrapper" class="header-nav-bag-wrapper header-nav-group header-nav-group-hover header-nav-child-bag-empty" data-module="headerUpdate">
					<c:choose>
						<c:when test="${!empty loginYES}">
							<a class="header-nav-parent-bag header-nav-parent header-nav-parent header-nav-parent-link header-nav-parent-link-standard"
								tabindex="8" href="/member/myInfo" id="header-nav-bag-anchor" aria-expanded="false">
								<span class="title">
									<span>${loginYES.mwname}</span>
								</span>
							</a>
						</c:when>
						<c:otherwise>
							<a class="header-nav-parent-bag header-nav-parent header-nav-parent header-nav-parent-link header-nav-parent-link-standard"
								tabindex="8" href="/member/login" id="header-nav-bag-anchor" aria-expanded="false">
								<span class="title">
									<span>Sign In</span>
								</span>
							</a>
						</c:otherwise>
					</c:choose>
				</nav>
				<!-- userInfo end -->
			</header>
			<!-- main-header end -->
			<!-- main-header-background start -->
			<header data-component-container="heroComponent" data-hero-layer-opacity="opacity20" data-hero-layer-color="BLACK"
				data-hero-loop-video-id="5851827842001" data-hero-loop-count=""
				class="hero hero-large hero-homepage hero--no-audio hero-loop-video   video-parent 0000DBA0_HomepageHeroHeaderStandard_S83-FS-CAMPAIGN-012 hero-cta "
				data-module="heroLarge, video, vrvideo, heroResize">
				<!-- main-header-background-img start -->
				<div class="hero-background-image-large-wrapper">
					<div class="opacity20 loop-opacity-layer BLACK" style="display: none;">&nbsp;</div>
					<img style="width: 100%; height: auto;" tabindex="-1" data-video-bg-id="5851827842001" 
					 	alt="메인 이미지입니다." src="${pageContext.request.contextPath}/resources/images/헤더컨설팅.jpg">
					<picture data-image-type="picture"></picture>
				</div>
				<!-- main-header-background-img end -->
			</header>
			<!-- main-header-background end -->