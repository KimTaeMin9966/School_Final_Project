<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 오류 발생</title>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js?ver=20181215001"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js?ver=20181215001"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css?ver=20181215001">
</head>
<body style="background: #777">
	<div class="container">
		<div class="row" style="margin: 18% 0">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="servicebox text-center">
					<div class="service-icon">
						<div class="dm-icon-effect-1" data-effect="slide-left">
							<img alt="ERROR" src="${pageContext.request.contextPath}/resources/images/error.png" width="100px" height="auto">
							<h1>404 - Not Found</h1>
						</div>
						<h1 class="big-title">Are you lost?</h1>
						<h4 class="small-title">The page you are looking for no longer exists.<br>
						Perhaps you can return back to the site's homepage and see if you can find what you are looking for.</h4>
						<a class="btn btn-danger" href="javascript:history.go(-1);">BACK TO HOME</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>