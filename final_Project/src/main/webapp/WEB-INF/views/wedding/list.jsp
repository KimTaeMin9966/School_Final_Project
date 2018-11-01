<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box login-box">
				<div class="box-header with-border">
					<h3>체크리스트</h3>
				</div>
				<div class="box-body">
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
					<div style="height: 1000px;"></div>
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
					<form action="/wedding/list/step1" method="post">
						<div class="form-group has-feedback">
							<label>날짜</label>
							<input type="text" id="list_day" name="list_day" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>요일</label>
							<input type="text" id="list_week" name="list_week" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>장소</label>
							<input type="text" id="list_area" name="list_area" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>기타</label>
							<input type="text" id="list_etc" name="list_etc" class="form-control" required />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<input type="button" id="btnSave" class="btn btn-default" value="저장" />
								<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
								<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
								<input type="reset" class="btn btn-default btn-block" value="리셋" />
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
					<form action="/wedding/list/step1" method="post">
						<div class="form-group has-feedback">
							<label>날짜</label>
							<input type="text" id="list_day" name="list_day" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>요일</label>
							<input type="text" id="list_week" name="list_week" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>장소</label>
							<input type="text" id="list_area" name="list_area" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>기타</label>
							<input type="text" id="list_etc" name="list_etc" class="form-control" required />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<input type="button" id="btnSave" class="btn btn-default" value="저장" />
								<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
								<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
								<input type="reset" class="btn btn-default btn-block" value="리셋" />
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
					<form action="/wedding/list/step1" method="post">
						<div class="form-group has-feedback">
							<label>날짜</label>
							<input type="text" id="list_day" name="list_day" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>요일</label>
							<input type="text" id="list_week" name="list_week" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>장소</label>
							<input type="text" id="list_area" name="list_area" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>기타</label>
							<input type="text" id="list_etc" name="list_etc" class="form-control" required />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<input type="button" id="btnSave" class="btn btn-default" value="저장" />
								<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
								<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
								<input type="reset" class="btn btn-default btn-block" value="리셋" />
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
					<form action="/wedding/list/step1" method="post">
						<div class="form-group has-feedback">
							<label>날짜</label>
							<input type="text" id="list_day" name="list_day" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>요일</label>
							<input type="text" id="list_week" name="list_week" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>장소</label>
							<input type="text" id="list_area" name="list_area" class="form-control" required />
						</div>
						<div class="form-group has-feedback">
							<label>기타</label>
							<input type="text" id="list_etc" name="list_etc" class="form-control" required />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<input type="button" id="btnSave" class="btn btn-default" value="저장" />
								<input type="button" id="btnEdit" class="btn btn-default" value="수정" />
								<input type="button" id="btnCancel" class="btn btn-default" value="취소" />
								<input type="reset" class="btn btn-default btn-block" value="리셋" />
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
	
//저장 버튼 이벤트 
$("#ck_step1_1_save").click(function() {
	$("#td_step_1_1").html
		($("#step1_1text1").val()+'<br/>'
		+$("#step1_1text2").val()+'<br/>'
		+$("#step1_1text3").val()+'<br/>'
		+$("#step1_1text4").val());
   myModal.hide(); // 모달창 감추기
   
   /* 비동기통신 */
   $.ajax({
       type : "GET", //전송방식을 지정한다 (POST,GET)
       url : "/wedding/list/step1",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
       dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
       data :{
       	mwid:"${memberVo.mwid}",
       	step1_1text1:$("#step1_1text1").val(), 	/* name키값 : val값 */
       	step1_1text2:$("#step1_1text2").val(),
       	step1_1text3:$("#step1_1text3").val(),
       	step1_1text4:$("#step1_1text4").val()
       },
       error : function(){
           alert("Fail");
       },
       success : function(Parse_data){
           alert(Parse_data);
       }
        
   });
   
});

//수정 버튼 이벤트 
$("#ck_step1_1_modify").click(function() {
		$("#td_step_1_1").html
			($("#step1_1text1").val()+'<br/>'
			+$("#step1_1text2").val()+'<br/>'
			+$("#step1_1text3").val()+'<br/>'
			+$("#step1_1text4").val());
		myModal.hide(); // 모달창 감추기
		
		/* 비동기통신 */
		$.ajax({
		    type : "GET", //전송방식을 지정한다 (POST,GET)
		    url : "/wedding/list/step1",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
		    dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
		    data :{
		    	mwid:"${memberVo.mwid}",
		    	step1_1text1:$("#step1_1text1").val(), 	/* name키값 : val값 */
		    	step1_1text2:$("#step1_1text2").val(),
		    	step1_1text3:$("#step1_1text3").val(),
		    	step1_1text4:$("#step1_1text4").val()
		    },
		    error : function(){
		        alert("Fail");
		    },
		    success : function(Parse_data){
		        alert(Parse_data);
		    }   
		});
});

//취소 버튼 이벤트 
$("#ck_step1_1_cancel").click(function() {
	myModal.hide();
});

//초기화 버튼 이벤트   
$("#ck_step1_1_reset").click(function() {
	$("#step1_1text1").val("");
   $("#step1_1text2").val("");
   $("#step1_1text3").val("");
   $("#step1_1text4").val("");
});

//체크박스 선택과 미선택시 알림창 
$("#ck_step1_1").change(function(){
	if($("#ck_step1_1").is(":checked")){
		alert("상견례 체크되었습니다.");
	}else{
		alert("체크박스가 해제되었습니다.");
	}
});
</script>
<script type="text/javascript">
	$('#chList1').click(function() {
		alert('상견례 체크 하러 갑니다.');
		step1_modal.show();
	});
	
	$('#chList2').click(function() {
		alert('웨딩홀 & 예약일 체크 하러 갑니다.');
		step2_modal.show();
	});
	
	$('#chList3').click(function() {
		alert('스튜디오 & 예약일  체크 하러 갑니다.');
		step3_modal.show();
	});
	
	$('#chList4').click(function() {
		alert('컨설팅 체크 하러 갑니다.');
		step4_modal.show();
	});
</script>
<%@include file="../include/footer.jsp"%>