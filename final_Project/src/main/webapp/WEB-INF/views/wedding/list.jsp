<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/listheader.jsp"%>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box login-box">
				<div class="container">
					<div class="row">
						<div class="col-md-offset-2 col-md-8 text-center">
							<h2>CHECK LIST</h2><hr/>
						</div>
					</div>
					<section class="testimonial">
						<div class="row">
							<div class="col-md-offset-1 col-md-10">
								<div class="media">
									<div class="media-left media-middle">
										<img src=/resources/images/체크리스트이미지.jpg />
									</div>
									<div class="media-body media-middle">
										<blockquote>
											<p>We had so much fun throughout the entire wedding
												planning process.We had so much fun throughout the entire
												wedding planning process. Everyone was fantastic and always
												communicated quickly. The wedding day itself was just
												perfect and well-executed and we got so many compliments on
												the venue and food.</p>
											<div class="form-group has-feedback">
												<input type="button" id="chList1" class="btn btn-default btn-block" value="상견례 체크 하러가기" />
											</div>
											<div class="form-group has-feedback">
												<input type="button" id="chList2" class="btn btn-default btn-block" value="웨딩홀 & 예약일 체크 하러가기" />
											</div>
											<div class="form-group has-feedback">
												<input type="button" id="chList3" class="btn btn-default btn-block" value="스튜디오 & 예약일 체크 하러가기" />
											</div>
											<div class="form-group has-feedback">
												<input type="button" id="chList4" class="btn btn-default btn-block" value="컨설팅 체크 하러가기" />
											</div>
											<div class="box-footer">
												<cite> Tiffany &amp; Tom, 2018 </cite>
											</div>
										</blockquote>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 체크리스트 모달 시작 -->
	<div id="STEP1_modal" class="row modal-custom">
		<div class="col-md-12">
			<div class="box login-box">
				<div class="box-header with-border">
					<h3>체크리스트 STEP 1 (상견례 체크)</h3>
				</div>
				<div class="box-body">
					<form id="STEP1_modal_form">
						<input type="hidden" id="memberID" name="memberID" value="${loginYES.mwid}">
						<div class="form-group has-feedback">
							<label>날짜</label>
							<input type="text" id="list_day" name="list_day" class="form-control" value="${STEP1.list_day}" placeholder="EX) 2018/11/02" required />
						</div>
						<div class="form-group has-feedback">
							<label>요일</label>
							<input type="text" id="list_week" name="list_week" class="form-control" value="${STEP1.list_week}" placeholder="EX) 금요일" required />
						</div>
						<div class="form-group has-feedback">
							<label>장소</label>
							<input type="text" id="list_area" name="list_area" class="form-control" value="${STEP1.list_area}" placeholder="EX) 부산" required />
						</div>
						<div class="form-group has-feedback">
							<label>기타</label>
							<input type="text" id="list_etc" name="list_etc" class="form-control" value="${STEP1.list_etc}" placeholder="EX) 기타" required />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<c:choose>
									<c:when test="${!empty STEP1}">
										<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
										<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
									</c:when>
									<c:otherwise>
										<input type="button" id="btnSave" class="btn btn-default" value="저장" />
										<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
										<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
										<input type="reset" class="btn btn-default btn-block" value="리셋" />
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div id="STEP2_modal" class="row modal-custom">
		<div class="col-md-12">
			<div class="box login-box">
				<div class="box-header with-border">
					<h3>체크리스트 STEP 2 (웨딩홀 & 예약일 체크)</h3>
				</div>
				<div class="box-body">
					<form id="STEP2_modal_form">
						<input type="hidden" id="memberID" name="memberID" value="${loginYES.mwid}">
						<div class="form-group has-feedback">
							<label>날짜</label>
							<input type="text" id="list_day" name="list_day" class="form-control" value="${STEP2.list_day}" placeholder="EX) 2018/11/02" required />
						</div>
						<div class="form-group has-feedback">
							<label>요일</label>
							<input type="text" id="list_week" name="list_week" class="form-control" value="${STEP2.list_week}" placeholder="EX) 금요일" required />
						</div>
						<div class="form-group has-feedback">
							<label>장소</label>
							<input type="text" id="list_area" name="list_area" class="form-control" value="${STEP2.list_area}" placeholder="EX) 부산" required />
						</div>
						<div class="form-group has-feedback">
							<label>기타</label>
							<input type="text" id="list_etc" name="list_etc" class="form-control" value="${STEP2.list_etc}" placeholder="EX) 기타" required />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<c:choose>
									<c:when test="${!empty STEP2}">
										<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
										<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
									</c:when>
									<c:otherwise>
										<input type="button" id="btnSave" class="btn btn-default" value="저장" />
										<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
										<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
										<input type="reset" class="btn btn-default btn-block" value="리셋" />
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div id="STEP3_modal" class="row modal-custom">
		<div class="col-md-12">
			<div class="box login-box">
				<div class="box-header with-border">
					<h3>체크리스트 STEP 3 (스튜디오 & 예약일 체크)</h3>
				</div>
				<div class="box-body">
					<form id="STEP3_modal_form">
						<input type="hidden" id="memberID" name="memberID" value="${loginYES.mwid}">
						<div class="form-group has-feedback">
							<label>날짜</label>
							<input type="text" id="list_day" name="list_day" class="form-control" value="${STEP3.list_day}" placeholder="EX) 2018/11/02" required />
						</div>
						<div class="form-group has-feedback">
							<label>요일</label>
							<input type="text" id="list_week" name="list_week" class="form-control" value="${STEP3.list_week}" placeholder="EX) 금요일" required />
						</div>
						<div class="form-group has-feedback">
							<label>장소</label>
							<input type="text" id="list_area" name="list_area" class="form-control" value="${STEP3.list_area}" placeholder="EX) 부산" required />
						</div>
						<div class="form-group has-feedback">
							<label>기타</label>
							<input type="text" id="list_etc" name="list_etc" class="form-control" value="${STEP3.list_etc}" placeholder="EX) 기타" required />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<c:choose>
									<c:when test="${!empty STEP3}">
										<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
										<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
									</c:when>
									<c:otherwise>
										<input type="button" id="btnSave" class="btn btn-default" value="저장" />
										<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
										<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
										<input type="reset" class="btn btn-default btn-block" value="리셋" />
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div id="STEP4_modal" class="row modal-custom">
		<div class="col-md-12">
			<div class="box login-box">
				<div class="box-header with-border">
					<h3>체크리스트 STEP 4 (컨설팅 체크)</h3>
				</div>
				<div class="box-body">
					<form id="STEP4_modal_form">
						<input type="hidden" id="memberID" name="memberID" value="${loginYES.mwid}">
						<div class="form-group has-feedback">
							<label>날짜</label>
							<input type="text" id="list_day" name="list_day" class="form-control" value="${STEP4.list_day}" placeholder="EX) 2018/11/02" required />
						</div>
						<div class="form-group has-feedback">
							<label>요일</label>
							<input type="text" id="list_week" name="list_week" class="form-control" value="${STEP4.list_week}" placeholder="EX) 금요일" required />
						</div>
						<div class="form-group has-feedback">
							<label>장소</label>
							<input type="text" id="list_area" name="list_area" class="form-control" value="${STEP4.list_area}" placeholder="EX) 부산" required />
						</div>
						<div class="form-group has-feedback">
							<label>기타</label>
							<input type="text" id="list_etc" name="list_etc" class="form-control" value="${STEP4.list_etc}" placeholder="EX) 기타" required />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<c:choose>
									<c:when test="${!empty STEP4}">
										<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
										<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
									</c:when>
									<c:otherwise>
										<input type="button" id="btnSave" class="btn btn-default" value="저장" />
										<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
										<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
										<input type="reset" class="btn btn-default btn-block" value="리셋" />
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 끝 -->
</section>
<script type="text/javascript">
	var step1_modal = new Example.Modal({ id: "STEP1_modal" });
	var step2_modal = new Example.Modal({ id: "STEP2_modal" });
	var step3_modal = new Example.Modal({ id: "STEP3_modal" });
	var step4_modal = new Example.Modal({ id: "STEP4_modal" });
	
	/* SHOW */
	$('#chList1').click(function() {
		step1_modal.show();
	});
	
	$('#chList2').click(function() {
		step2_modal.show();
	});
	
	$('#chList3').click(function() {
		step3_modal.show();
	});
	
	$('#chList4').click(function() {
		step4_modal.show();
	});

	/* HIDE */
	$('#STEP1_modal').on('click', '#btnCancel', function() {
		step1_modal.hide();
	});

	$('#STEP2_modal').on('click', '#btnCancel', function() {
		step2_modal.hide();
	});

	$('#STEP3_modal').on('click', '#btnCancel', function() {
		step3_modal.hide();
	});

	$('#STEP4_modal').on('click', '#btnCancel', function() {
		step4_modal.hide();
	});

	/* SAVE */
	$('#STEP1_modal').on('click', '#btnSave', function() {
		var formObj = $("#STEP1_modal_form");
		console.log(formObj);

		formObj.attr('action', '/wedding/list/step1Save');
		formObj.attr('method', 'post');
		formObj.submit();
		
		step1_modal.hide();
	});

	$('#STEP2_modal').on('click', '#btnSave', function() {
		var formObj = $("#STEP2_modal_form");
		console.log(formObj);

		formObj.attr('action', '/wedding/list/step2Save');
		formObj.attr('method', 'post');
		formObj.submit();
		
		step2_modal.hide();
	});

	$('#STEP3_modal').on('click', '#btnSave', function() {
		var formObj = $("#STEP3_modal_form");
		console.log(formObj);

		formObj.attr('action', '/wedding/list/step3Save');
		formObj.attr('method', 'post');
		formObj.submit();
		
		step3_modal.hide();
	});

	$('#STEP4_modal').on('click', '#btnSave', function() {
		var formObj = $("#STEP4_modal_form");
		console.log(formObj);

		formObj.attr('action', '/wedding/list/step4Save');
		formObj.attr('method', 'post');
		formObj.submit();
		
		step4_modal.hide();
	});
	

	/* EDIT */
	$('#STEP1_modal').on('click', '#btnEdit', function() {
		var formObj = $("#STEP1_modal_form");
		console.log(formObj);

		formObj.attr('action', '/wedding/list/step1Edit');
		formObj.attr('method', 'post');
		formObj.submit();
		
		step1_modal.hide();
	});

	$('#STEP2_modal').on('click', '#btnEdit', function() {
		var formObj = $("#STEP2_modal_form");
		console.log(formObj);

		formObj.attr('action', '/wedding/list/step2Edit');
		formObj.attr('method', 'post');
		formObj.submit();
		
		step2_modal.hide();
	});

	$('#STEP3_modal').on('click', '#btnEdit', function() {
		var formObj = $("#STEP3_modal_form");
		console.log(formObj);

		formObj.attr('action', '/wedding/list/step3Edit');
		formObj.attr('method', 'post');
		formObj.submit();
		
		step3_modal.hide();
	});

	$('#STEP4_modal').on('click', '#btnEdit', function() {
		var formObj = $("#STEP4_modal_form");
		console.log(formObj);

		formObj.attr('action', '/wedding/list/step4Edit');
		formObj.attr('method', 'post');
		formObj.submit();
		
		step4_modal.hide();
	});
</script>
<%@include file="../include/footer.jsp"%>