<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp"%>
	<!-- main content start -->
	<section class="section3">
		<div class="container withpadding">
			<div class="message">
				<form action="/school/loginPost" method="post">
					<div class="col-lg-9 col-md-9 col-sm-9">
						<h3>본인 학번을 입력 해주세요 예) 10101</h3>
						<p><input type="text" required class="form-control" maxlength="5" placeholder="본인 학번을 입력 해주세요 예) 10101" name="sNumber"></p>
						<h3>본인 이름 입력 해주세요 예) 홍길동</h3>
						<p><input type="text" required class="form-control" maxlength="3" placeholder="본인 이름 입력 해주세요 예) 홍길동" name="sName"></p>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-12">
						<input type="submit" value="로그인" class="dmbutton button large pull-right">
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- main content end -->
<%@include file="./include/footer.jsp"%>