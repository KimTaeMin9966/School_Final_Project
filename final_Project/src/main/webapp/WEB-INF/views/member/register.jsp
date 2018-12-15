<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp"%>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box login-box">
				<div class="box-header with-border">
					<h3>회원가입</h3>
				</div>
				<div class="box-body">
					<form id="registerFROM" action="/member/registerPost" method="post">
						<div class="form-group has-feedback">
							<label>ID 입력 해주세요</label>
							<input type="text" id="mwid" name="mwid" class="form-control" placeholder="USER ID" />
							<input type="button" id="dbCheck" class="btn btn-primary btn-block btn-flat" value="중복체크" />
							<div id="mwid_result" class="form-control"></div>
						</div>
						<div class="form-group has-feedback">
							<label>PASSWORD 입력 해주세요</label>
							<input type="password" id="mwpw" name="mwpw" class="form-control" placeholder="USER PW" />
							<div id="mwpw_result" class="form-control"></div>
						</div>
						<div class="form-group has-feedback">
							<label>PASSWORD를 다시 입력 해주세요</label>
							<input type="password" id="mwpw2" name="mwpw2" class="form-control" placeholder="RE PW" />
							<div id="mwpw2_result" class="form-control"></div>
						</div>
						<div class="form-group has-feedback">
							<label>이름을 입력 해주세요</label>
							<input type="text" id="mwname" name="mwname" class="form-control" placeholder="nick name" />
							<div id="mwname_result" class="form-control"></div>
						</div>
						<div class="form-group has-feedback">
							<label>휴대폰 번호를 입력 해주세요</label>
							<input type="text" id="mwmobile" name="mwmobile" class="form-control" placeholder="Ex) 01012345678" />
							<div id="mwmobile_result" class="form-control"></div>
						</div>
						<div class="form-group has-feedback">
							<label>생년월일을 입력 해주세요</label>
							<input type="text" id="mwbirth" name="mwbirth" class="form-control" placeholder="Ex) 891024" />
							<div id="mwbirth_result" class="form-control"></div>
						</div>
						<div class="form-group has-feedback">
							<textarea class="form-control" readonly>가입시 작성하신 내용은 비공개를 원칙으로 하여 회원 탈퇴시까지 보관됩니다.</textarea>
							<input type="checkbox" id="adm_accept" />
							<label for="adm_accept" class="accept_label">&nbsp;개인정보 수집 및 이용에 동의합니다.</label>
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<input type="button" id="CLICK" class="btn btn-primary btn-block btn-flat" value="회원가입" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	var message = '${message}';
	
	if (message != null && message != '') { alert(message); }
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/wedding/js/register.js"></script>
<%@include file="./include/footer.jsp"%>