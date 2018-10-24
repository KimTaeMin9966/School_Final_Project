<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<div class="login-box">
	<div class="login-logo">
		<a href="/"><b>Made Wedding - MW</b></a>
	</div>
	<div class="login-box-body">
		<p class="login-box-msg">회원가입</p>
		<form method="post">
			<div class="form-group has-feedback">
				<input type="text" name="uid" class="form-control" placeholder="USER ID" required />
				<span class="glypicon glypicon-evenlope form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<input type="password" name="upw" class="form-control" placeholder="USER PW" />
			</div>
			<div class="form-group has-feedback">
				<input type="password" name="upw2" class="form-control" placeholder="RE PW" />
			</div>
			<div class="form-group has-feedback">
				<input type="text" name="uname" class="form-control" placeholder="nick name" />
			</div>
			<div class="row">
				<div class="col-xs-8"></div>
				<div class="col-xs-4">
					<input type="submit" class="btn btn-primary btn-block btn-flat" value="Sign Up" />
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	var message = '${message}';

	if (message != null && message != '') {
		alert(message);
	}
</script>
<!-- jQuery 2.1.4 -->
<script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<%@include file="../include/footer.jsp"%>