<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header with-border">
					<h3>로그인</h3>
				</div>
				<div class="box-body">
					<form method="post">
						<div class="form-group has-feedback">
							<input type="text" name="uid" class="form-control" placeholder="USER ID" />
							<span class="glypicon glypicon-evenlope form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<input type="password" name="upw" class="form-control" placeholder="USER PW" />
						</div>
					</form>
				</div>
				<div class="box-footer">
					<div class="col-xs-8">
						<label><input type="checkbox" name="useCookie" /> 로그인 유지</label>
					</div>
					<div class="col-xs-4">
						<input type="submit" class="btn btn-primary btn-block btn-flat" value="Sign In" />
					</div>
					<a href="/member/register">Sign Up</a>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	var message = '${message}';

	if (message != null && message != '') {
		alert(message);
	}
</script>
<!-- jQuery 2.1.4 -->
<script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
<%@include file="../include/footer.jsp"%>