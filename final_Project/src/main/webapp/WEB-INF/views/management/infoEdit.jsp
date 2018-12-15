<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp"%>

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box login-box">
				<div class="box-header with-border">
					<h3>회원정보 수정하기</h3>
				</div>
				<div class="box-body">
					<form id="infoEdit" method="post">
						<div class="form-group has-feedback">
							<label>USER ID</label>
							<input type="text" id="mwid" name="mwid" class="form-control" value="${memberInfo.mwid}" readonly />
							<span class="glypicon glypicon-evenlope form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<label>USER PW</label>
							<input type="text" id="mwpw" name="mwpw" class="form-control" placeholder="DB에 암호화 되어있어 표시할수 없습니다. 변경시 입력 해주세요." />
						</div>
						<div class="form-group has-feedback">
							<label>USER NAME</label>
							<input type="text" id="mwname" name="mwname" class="form-control" value="${memberInfo.mwname}" />
						</div>
						<div class="form-group has-feedback">
							<label>USER MOBILE</label>
							<input type="text" id="mwmobile" name="mwmobile" class="form-control" value="${memberInfo.mwmobile}"  />
						</div>
						<div class="form-group has-feedback">
							<label>USER BIRTH</label>
							<input type="text" id="mwbirth" name="mwbirth" class="form-control" value="${memberInfo.mwbirth}"  />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<input type="button" id="ok" class="btn btn-primary btn-block btn-flat" value="확인" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	var message = '${result}';

	if (message != null && message == 'SUCCESS') { alert("정보수정에 성공하셨습니다."); }
	else if (message != null && message == 'FAIL') { alert("정보수정에 실패하셨습니다."); }

	
	$('#ok').click(function() {
		var mwid = $('#mwid').val();
		var mwpw = $('#mwpw').val();
		var mwname = $('#mwname').val();
		var mwmobile = $('#mwmobile').val();
		var mwbirth = $('#mwbirth').val();
		
		$.ajax({
			type : 'PATCH',
			url : '/management/infoEdit',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "PATCH"
			},
			dataType : "text",
			data : JSON.stringify({
				mwid : mwid,
				mwpw : mwpw,
				mwname : mwname,
				mwmobile : mwmobile,
				mwbirth : mwbirth
			}),
			success : function(result) {
				if (result == "SUCCESS") {
					alert("처리 완료");
					location.href = '/management/member';
				}
			}
		});
	});
</script>

<%@include file="./include/footer.jsp"%>