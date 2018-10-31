<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header with-border">
					<h3>관리자 페이지(컨설팅 업체 추가)</h3>
				</div>
				<div class="box-body">
					<form method="post">
						<div class="form-group has-feedback">
							<input type="text" name="mwid" class="form-control" placeholder="USER ID" required />
							<span class="glypicon glypicon-evenlope form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<input type="password" name="mwpw" class="form-control" placeholder="USER PW" required />
						</div>
						<div class="form-group has-feedback">
							<input type="password" name="mwpw2" class="form-control" placeholder="RE PW" required />
						</div>
						<div class="form-group has-feedback">
							<input type="text" name="mwname" class="form-control" placeholder="nick name" required />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<input type="submit" class="btn btn-primary btn-block btn-flat" value="회원가입" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../include/footer.jsp"%>