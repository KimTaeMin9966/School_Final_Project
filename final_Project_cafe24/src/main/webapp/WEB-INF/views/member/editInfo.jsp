<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp"%>

<section class="content">
	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-6">
			<div class="box">
				<div class="box-header with-border">
					<h3>회원정보 수정</h3>
				</div>
				<form method="post">
					<div class="box-body">
						<div class="form-group has-feedback">
							<label>USER ID</label>
							<input type="text" name="mwid" class="form-control" value="${memberInfo.mwid}" readonly />
							<span class="glypicon glypicon-evenlope form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<label>USER PW</label>
							<input type="text" name="mwpw" class="form-control" placeholder="DB에 암호화 되어있어 표시할수 없습니다. 변경시 입력 해주세요." />
						</div>
						<div class="form-group has-feedback">
							<label>USER NAME</label>
							<input type="text" name="mwname" class="form-control" value="${memberInfo.mwname}"  />
						</div>
						<div class="form-group has-feedback">
							<label>USER MOBILE</label>
							<input type="text" name="mwmobile" class="form-control" value="${memberInfo.mwmobile}"  />
						</div>
						<div class="form-group has-feedback">
							<label>USER BIRTH</label>
							<input type="text" name="mwbirth" class="form-control" value="${memberInfo.mwbirth}"  />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<c:choose>
									<c:when test="${!empty loginYES && !(loginYES.mwname eq 'master' || loginYES.mwname eq '마스터') }">
										<input type="submit" id="edit" class="btn btn-primary btn-block btn-flat" value="정보수정" />
									</c:when>
								</c:choose>
								<input type="button" id="calcel" class="btn btn-primary btn-block btn-flat" value="취소" />
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	var message = '${result}';

	if (message != null && message == 'SUCCESS') { alert("정보수정에 성공하셨습니다."); }
	else if (message != null && message == 'FAIL') { alert("정보수정에 실패하셨습니다."); }
	
	$('#calcel').click(function() {
		location.href = '/wedding';
	});
</script>

<%@include file="./include/footer.jsp"%>