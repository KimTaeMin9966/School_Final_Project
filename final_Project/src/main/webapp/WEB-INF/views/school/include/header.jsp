<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/school/images/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/school/images/apple-touch-icon.png">
	
	<!-- Online JS -->
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.12/handlebars.min.js"></script>
	
	<!-- Online CSS -->
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
	
	<!-- Offline JS -->
	<script src="${pageContext.request.contextPath}/resources/school/plugins/jQuery/jQuery-2.1.4.min.js?ver=20181211001"></script>
	<script src="${pageContext.request.contextPath}/resources/school/js/bootstrap.min.js?ver=20181211001"></script>
	<script src="${pageContext.request.contextPath}/resources/school/js/bowser.js?ver=20181211001"></script>
	<script src="${pageContext.request.contextPath}/resources/school/js/upload.js?ver=20181211001"></script>
	<script src="${pageContext.request.contextPath}/resources/school/js/custom.js?ver=20181211001"></script>
	
	<!-- Offline CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/school/css/main.css?ver=20181211001">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/school/css/bootstrap.min.css?ver=20181211001">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/school/css/icomoon.css?ver=20181211001">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/school/css/custom.css?ver=20181211001">
	
	<!-- Auto Include Files -->
</head>
<body>
	<!-- main header start -->
	<header class="main header ">
		<div class="header-left"></div>
		<div class="header-center">
			<a href="/school"><img class="header-image" alt="학교 메인 페이지로 이동" src="${pageContext.request.contextPath}/resources/school/images/logo.png"></a>
		</div>
		<div class="header-right"></div>
	</header>
	<!-- main header end -->