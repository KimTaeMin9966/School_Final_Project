<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
	
<%-- 	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<!-- Pogo Slider CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pogo-slider.min.css">
	<!-- Site CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<!-- Responsive CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/responsive.css"> --%>
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
    <%-- <!-- Theme style -->
    <link href="${pageContext.request.contextPath}/resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="${pageContext.request.contextPath}/resources/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" /> --%>
    
    <!-- jQuery 2.1.4 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	
	<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body class="country-INT page-HP-INT-Launch-Cruise-19 pageType-ContentPage template-pages--home-homepage pageLabel-  language-en int nonTransactional hasGiantLookWithManualImage"
data-module="keysNavigation,keysNavigationOverlay," data-switchsite="/int/en/ajax/overlay">

	<!-- LOADER -->
	<!-- <div id="preloader">
		<div class="preloader pulse">
			<i class="fa fa-heartbeat" aria-hidden="true"></i>
		</div>
	</div> -->
	<!-- END LOADER -->

	<!-- Start header -->
	<div id="mm-0" class="mm-page-slideout">
	<div class="overlay-background prevent-document-scroll"></div>
	<div class="breakpoints">
			<div class="breakpoint standard" data-breakpoint="standard"></div>
			<div class="breakpoint large" data-breakpoint="large"></div>
			<div class="breakpoint medium" data-breakpoint="medium"></div>
			<div class="breakpoint small" data-breakpoint="small"></div>
			<div class="breakpoint retina" data-breakpoint="retina"></div>
		</div>
		<div class="hide">
            <div id="global-loginError"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이메일 및 / 또는 비밀번호가 잘못되었습니다. </font><font style="vertical-align: inherit;">다시 시도하거나 "비밀번호를 분실하셨습니까?"를 클릭하십시오. </font><font style="vertical-align: inherit;">링크.</font></font></div>
            <div id="global-required"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이 입력란은 비워 둘 수 없습니다.</font></font></div>
            <div id="global-match"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">입력란이 일치하지 않습니다.</font></font></div>
            <div id="global-invadiEmail"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">입력란이 유효한 이메일이 아닙니다.</font></font></div>
        </div>
	<div id="page">
		<div id="compressed-header-scroll-target"></div>
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
								href="/wedding/list" role="menuitem" aria-haspopup="true" aria-expanded="false" tabindex="11">체크리스트</a>
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
							<c:choose>
								<c:when test="${!empty loginYES}">
									<a id="header-nav-signin-anchor"
										class="header-nav-parent-account header-nav-anchor header-nav-parent-link-medium header-nav-item"
										href="/member/logOut" tabindex="6">로그아웃</a>
								</c:when>
								<c:otherwise>
									<a id="header-nav-signin-anchor"
										class="header-nav-parent-account header-nav-anchor header-nav-parent-link-medium header-nav-item"
										href="/member/register" tabindex="6">회원가입</a>
								</c:otherwise>
							</c:choose>
						</li>
					</ul>
				</div>
			</nav>
			<nav id="header-nav-bag-wrapper" class="header-nav-bag-wrapper header-nav-group header-nav-group-hover header-nav-child-bag-empty" data-module="headerUpdate">
				<c:choose>
					<c:when test="${!empty loginYES}">
						<a class="header-nav-parent-bag header-nav-parent header-nav-parent header-nav-parent-link header-nav-parent-link-standard" tabindex="8" href="#" id="header-nav-bag-anchor" aria-expanded="false">
							<span class="title"><span>${loginYES.mwname}</span></span>
						</a>
					</c:when>
					<c:otherwise>
						<a class="header-nav-parent-bag header-nav-parent header-nav-parent header-nav-parent-link header-nav-parent-link-standard" tabindex="8" href="/member/login" id="header-nav-bag-anchor" aria-expanded="false">
							<span class="title"><span>로그인</span></span>
						</a>
					</c:otherwise>
				</c:choose>
				
			</nav>
		</header>
		<div class="overlay ssa-logged-in-overlay" id="ssa-logged-in" data-module="overlay,signInSalesAssistant">
			<div class="overlay-wrapper ssa-logged-in-overlay-wrapper">
				<div class="ssa-logged-in-overlay-content-wrapper">
					<section class="overlay-content ssa-logged-in-overlay-content">
						<form action="/int/en/assisted-service/quit" method="get">
							<button class="overlay-close overlay-close-button-first" type="button">
								<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">닫기</font></font>
							</button>
							<div class="ssa-logged-in-overlay-info-wrapper">
								<p class="overlay-ssa-logged-in-title-standard">
									<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">영업 담당자 로그인</font></font>
								</p>
								<p class="overlay-ssa-logged-in-title-standard overlay-ssa-logged-in-title-standard-name"></p>
								<button class="full-ssa-logged-out-cta" type="submit">
									<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">연결 끊기</font></font>
								</button>
								<button class="overlay-close full-ssa-logged-in-cta" type="button">
									<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">잇다</font></font>
								</button>
							</div>
						</form>
					</section>
				</div>
			</div>
		</div>
		<input type="hidden" id="siteid" value="gucci-international-cookieaccepted">
		<input type="hidden" id="showCookieOverlay" value="false">
		<aside class="hide overlay cookie-overlay" id="cookie-overlay" data-module="cookiedirectivepolicy">
			<button class="overlay-close overlay-close-button-first" id="closeOverlay" type="button"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
				닫기</font></font></button>
			<div class="overlay-content cookie-overlay-content">
				<div class="cookie-overlay-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Gucci.com 쿠키</font></font></div>
				<!-- <p class="cookie-overlay-body-copy"></p>  -->
				<p class="cookie-overlay-body-copy">We use cookies (technical and profiling cookies from us and third parties) on Gucci.com to provide you with a better online experience and to deliver you with online commercial messages tailored on your preferences. If you select "continue" or access any content of our website without customizing your choices, you agree to the use of cookies.</p>
				<p class="cookie-overlay-body-copy">Find out more about our cookie policy and how to refuse cookies&nbsp;<a class="cookie-link" href="/int/en/st/privacy-landing">by clicking here</a>.</p>
				<button class="overlay-close overlay-close-button-second" id="acceptCookiePolicy">Continue</button>
			</div><!-- .cookie-overlay-content -->
		</aside>
		<div id="international-overlay" class="overlay inter-overlay-wrapper" data-module="overlay, overlayInternational">
			<div class="international-overlay-wrapper">
				<div class="international-content-wrapper overlay-wrapper">
					<div class="international-overlay-content overlay-content">
						<button class="international-overlay-close overlay-close" type="button">Close</button>
						<header class="international-overlay-header">
							<div class="location-title">Welcome to Gucci. You're entering our International site, which presents the Gucci collection available through our boutiques around the world.</div>
						</header>
						<div class="location-description">
							<p>Online shopping is currently available in U.S., Canada, Europe, Middle East, Japan, Korea, China, Hong Kong, Australia and New Zealand. If you have a local residence in one of these markets for delivery and would like to shop online:</p>
							<a class="inter-change-country overlay-open overlay-close" href="#header-nav-ship-to">Change your country</a>
							<span class="description-2">Otherwise, continue using our International Site.</span>
							<div class="international-continue-button">
								<a href="#" class="button-standard overlay-close">Continue</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<style>
			.0000DB97_HomepageHeroHeaderStandard_S83-FS-CAMPAIGN-012.hero .hero-title {color:}
			.0000DB97_HomepageHeroHeaderStandard_S83-FS-CAMPAIGN-012.hero .hero-title .eyebrow {color:}
			.0000DB97_HomepageHeroHeaderStandard_S83-FS-CAMPAIGN-012 .play.play-white {border-color:}
			.0000DB97_HomepageHeroHeaderStandard_S83-FS-CAMPAIGN-012 .play.play-white:before{border-left-color:}
			.0000DB97_HomepageHeroHeaderStandard_S83-FS-CAMPAIGN-012.hero-large .hero-promo-wrapper .hero-promo-link{color:}
			.0000DB97_HomepageHeroHeaderStandard_S83-FS-CAMPAIGN-012.hero-large .explore-arrow{color:}
		</style>
		<header data-component-container="heroComponent" data-hero-layer-opacity="opacity20"
		data-hero-layer-color="BLACK" data-hero-loop-video-id="" data-hero-loop-count=""
		class="hero hero-large hero-homepage hero--no-audio hero-loop-video   video-parent 0000DB97_HomepageHeroHeaderStandard_S83-FS-CAMPAIGN-012 hero-cta "
		data-module="heroLarge, video, vrvideo, heroResize" style="height: 571px; max-height: 570px;">
			<div class="hero-background-image-large-wrapper">
				<div class="opacity20 loop-opacity-layer BLACK">&nbsp;</div>
				<video data-module="video" playsinline="" autoplay="autoplay" muted="muted" loop="loop" class="bg-video video-center-xy header-background-video bgVideoActive" tabindex="-1" data-video-bg-id=""></video>
				<picture data-image-type="picture"></picture>
			</div>
			<picture data-image-type="picture"></picture>
			<div class="hero-content-wrapper hero-large-content-wrapper style-primarycta color-light">
				<div class="hero-content-centered vr-content">
					<h1 class="hero-title">
						<span data-component-attr-id="title" class="eyebrow"></span>
						<span data-component-attr-id="subtitle"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">크루즈 2019</font></font></span>
					</h1>
					<a data-component-attr-id="url" class="button-gold shop-the-collection" href="/int/en/ca/men-c-men"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Shop Men </font></font></a>
						<a data-component-attr-id="url" class="button-gold shop-the-collection" href="/int/en/ca/women-c-women"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Shop 여성</font></font></a>
						<!-- CTA management if there is a video-vr in play -->
					</div>
			</div>
		</header>