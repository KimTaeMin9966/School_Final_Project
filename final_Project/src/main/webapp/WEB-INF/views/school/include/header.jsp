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
				<div class="col-lg-12 col-md-12 col-sm-12 title-area">
					<div class="site-title" id="title">
						<a href="/school" title="학교 홈피 메인으로 이동">
							<h4>대진전자통신<span>고등학교</span></h4>
						</a>
					</div>
				</div>
				<!-- title area -->
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div id="nav" class="right">
						<div class="container clearfix">
							<ul id="jetmenu" class="jetmenu blue">
								<li class="active"><a href="/school">Home</a></li>
								<li>
									<a href="#">투표</a>
									<ul class="dropdown">
										<li><a href="/school/vote">학생회장선거</a></li>
									</ul>
								</li>
								<li>
									<a href="#">학교소개</a>
									<ul class="dropdown">
										<li><a href="#">학교장인사말</a></li>
										<li><a href="#">학교연혁</a></li>
										<li><a href="#">학교현황</a></li>
										<li><a href="#">교육목표</a></li>
										<li><a href="#">교훈 및 학교상징</a></li>
										<li><a href="#">교직원소개</a></li>
										<li><a href="#">찾아오시는길</a></li>
										<li><a href="#">학교관련언론보도</a></li>
										<li><a href="#">학교소개 동영상</a></li>
									</ul>
								</li>
								<li>
									<a href="#">신학과소개</a>
									<ul class="dropdown">
										<li><a href="#">전자과</a></li>
										<li><a href="#">컴퓨터소프트웨어과</a></li>
										<li><a href="#">정보통신과</a></li>
										<li><a href="#">산업디자인과</a></li>
									</ul>
								</li>
								<li>
									<a href="#">입학안내</a>
									<ul class="dropdown">
										<li><a href="#">입학관련자료실</a></li>
										<li><a href="#">학교소개 동영상</a></li>
										<li><a href="#">학교안내ppt</a></li>
									</ul>
								</li>
								<li>
									<a href="#">알림마당</a>
									<ul class="dropdown">
										<li><a href="#">공지사항</a></li>
										<li><a href="#">포토갤러리</a></li>
										<li><a href="#">자유게시판</a></li>
										<li><a href="#">가정통신문</a></li>
										<li><a href="#">건의함</a></li>
										<li><a href="#">학교교육계획서</a></li>
										<li><a href="#">학사일정</a></li>
										<li><a href="#">금식(영양상담)게시판</a></li>
										<li><a href="#">월간식단</a></li>
										<li><a href="#">학부모회</a></li>
									</ul>
								</li>
								<li>
									<a href="#">학생마당</a>
									<ul class="dropdown">
										<li><a href="#">학습자료실</a></li>
										<li><a href="#">기출문제</a></li>
										<li><a href="#">봉사활동</a></li>
										<li><a href="#">학생생활규정</a></li>
										<li><a href="#">방과후 학교</a></li>
									</ul>
								</li>
								<li>
									<a href="#">교사마당</a>
									<ul class="dropdown">
										<li><a href="#">부서별전달사항</a></li>
										<li><a href="#">교수학습자료실</a></li>
										<li><a href="#">실습실기자재119</a></li>
										<li><a href="#">시설, 교단선전화119</a></li>
									</ul>
								</li>
								<li>
									<a href="#">정보공개방</a>
									<ul class="dropdown">
										<li><a href="#">정보공개게시판</a></li>
										<li><a href="#">학교법인 정보공개</a></li>
										<li><a href="#">학교 정보공개</a></li>
										<li><a href="#">정보공개청구</a></li>
									</ul>
								</li>
								<li>
									<a href="#">진로정보</a>
									<ul class="dropdown">
										<li><a href="#">진로정보</a></li>
										<li><a href="#">취업정보(현장실습요청)</a></li>
									</ul>
								</li>
								<li>
									<a href="#">구학과소개</a>
									<ul class="dropdown">
										<li><a href="#">로봇전자과</a></li>
										<li><a href="#">컴퓨터정보통신과</a></li>
										<li><a href="#">인터넷정보통신과</a></li>
										<li><a href="#">멀티미디어디자인과</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<section id="intro">
		<div class="container">
			<div class="ror">
				<div class="col-md-8 col-md-offset-2">
					<h1>접속하신걸 환영합니다</h1>
					<p></p>
				</div>
			</div>
		</div>
	</section>
	<!-- main header end -->