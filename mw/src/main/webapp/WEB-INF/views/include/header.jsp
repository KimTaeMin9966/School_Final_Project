<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My HOMAGE</title>
	<style>
		*{
			margin:0;
			padding:0;
		}
		html{
			height:100%;
		}
		body{
			font-size:0.75em;
			color:#333;
			line-height:1.2em;
			background:#e8e8e8;
			height:100%;
		}
		
		
		header{
			width:100%;
			background:url("/resources/img/headerweddingbackground.png") no-repeat left top / 100% 100%;
			overflow:hidden;
			height:400px;
		}
		#wrap{
			
			margin:0 auto;
			background:#fff;
			width:100%;
			min-height:100%;
			margin-top:10px;
			background-color:red;
		}
		
		a{
			text-decoration:none;
			color:#333;
		}
		
		a:hover{
			color:#39f;
		}
		
		#logo{
			float:left;
			background:url("imgs/logo.png") no-repeat left top;
			margin:42px 0 0 15px;
		}
		#logo a{
			width:167px;
			height:67px;
			display:block;
		}
		
		#hlink{
			float:right;
		}
		
		#hlink ul , nav ul{
			list-style:none;
		} 
		
		#hlink ul li , nav ul li{
			float:left;
		}
		
		#hlink{
			margin: 11px 28px 0 0;
		}
		#hlink ul li a{
			padding:0 10px;
		}
		
		#hlink ul li{
			background:url("imgs/div_line.png") no-repeat center right;		
		}
		
		#hlink ul li:last-child{
			background:none;
		}
		
		
		nav{
			height:50px;
			clear:right;
			/* text-indent:-999px; */
			width:100%;
			text-align:center;
			margin-top:300px;
			
		}
		nav ul{
			margin:0;
			paddding:0;
			text-align:center;
			overflow:hidden;
		}
		
		nav ul li{
			text-align:center;
		}
		
		nav ul li a{
			color:white;
			padding:0;
			display:block;
			width:118px;
			height:20px;
		}
		
		nav ul li.n1 a{
			background:url("imgs/m1.png") no-repeat center top;
			transition: all 0.2s ease-in-out;
		}
		
		nav ul li.n1 a:hover{
			background:url("imgs/m1.png") no-repeat center -23px;
		}
		
		nav ul li.n2 a{
			background:url("imgs/m2.png") no-repeat center top;
			transition: all 0.2s ease-in-out;
		}
		
		nav ul li.n2 a:hover{
			background:url("imgs/m2.png") no-repeat center -23px;
		}
		
		nav ul li.n3 a{
			background:url("imgs/m3.png") no-repeat center top;
			transition: all 0.2s ease-in-out;
		}
		
		nav ul li.n3 a:hover{
			background:url("imgs/m3.png") no-repeat center -23px;
			transition: all 0.2s ease-in-out;
		}
		
		nav ul li.n4 a{
			background:url("imgs/m4.png") no-repeat center top;
			transition: all 0.2s ease-in-out;
		}
		
		nav ul li.n4 a:hover{
			background:url("imgs/m4.png") no-repeat center center;
		}
		
		.clear{
			clear:both;
		}
		
	</style>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<div id="wrap">
		<header>
			<div id="logo">
				<a href="index.jsp">HOME</a>
			</div>
			<div id="hlink">	
				<ul>
					<li><a href="login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입</a></li>
				</ul>
			</div>
			<nav>
				<ul>
					<li class="n1"><a href="company.jsp">준비</a></li>
					<li class="n2"><a href="product.jsp">컨설팅</a></li>
					<li class="n3"><a href="community.jsp">웨딩홀</a></li>
					<li class="n4"><a href="customer.jsp">스튜디오</a></li>
					<li class="n4"><a href="customer.jsp">체크리스트</a></li>
					<li class="n4"><a href="customer.jsp">청첩장</a></li>
				</ul>
			</nav>
		</header>
		<div class="clear"></div>