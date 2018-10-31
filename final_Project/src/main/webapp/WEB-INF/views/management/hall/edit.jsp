<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../include/header.jsp"%>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header with-border">
					<h3>관리자 페이지(웨딩홀 업체 수정)</h3>
				</div>
				<div class="box-body">
					<form method="post">
						<input type="hidden" id="hall_hno" name="hall_hno" class="form-control" value="${editHall.hall_hno}" />
						<div class="form-group has-feedback">
							<label>홀이름</label>
							<input type="text" id="hall_name" name="hall_name" class="form-control" value="${editHall.hall_name}" />
						</div>
						<div class="form-group has-feedback">
							<label>홀위치</label>
							<input type="text" id="hall_location" name="hall_location" class="form-control" value="${editHall.hall_location}" readonly />
						</div>
						<div class="form-group has-feedback">
							<label>홀수용인원</label>
							<input type="text" id="hall_person" name="hall_person" class="form-control" value="${editHall.hall_person}" />
						</div>
						<div class="form-group has-feedback">
							<label>홀가격</label>
							<input type="text" id="hall_price" name="hall_price" class="form-control" value="${editHall.hall_price}" />
						</div>
						<div class="form-group has-feedback">
							<label>홀테마</label>
							<input type="text" id="hall_thema" name="hall_thema" class="form-control" value="${editHall.hall_thema}" />
						</div>
						<div class="form-group has-feedback">
							<label>홀컨텐츠</label>
							<input type="text" id="hall_contents" name="hall_contents" class="form-control" value="${editHall.hall_contents}" />
						</div>
						<div class="form-group has-feedback">
							<label>페이지 전환을 위한 링크</label>
							<input type="text" id="hall_link" name="hall_link" class="form-control" value="${editHall.hall_link}" readonly />
						</div>
						<div class="form-group has-feedback">
							<label>지역</label>
							<input type="text" id="hall_area" name="hall_area" class="form-control" value="${editHall.hall_area}" readonly />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<input type="button" id="ok" class="btn btn-primary btn-block btn-flat" value="홀수정" />
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
		var hall_hno = $('#hall_hno').val();
		var hall_name = $('#hall_name').val();
		var hall_location = $('#hall_location').val();
		var hall_person = $('#hall_person').val();
		var hall_price = $('#hall_price').val();
		var hall_thema = $('#hall_thema').val();
		var hall_contents = $('#hall_contents').val();
		var hall_link = $('#hall_link').val();
		var hall_area = $('#hall_area').val();
		
		$.ajax({
			type : 'PATCH',
			url : '/management/hall/edit',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "PATCH"
			},
			dataType : "text",
			data : JSON.stringify({
				hall_hno : hall_hno,
				hall_name : hall_name,
				hall_location : hall_location,
				hall_person : hall_person,
				hall_price : hall_price,
				hall_thema : hall_thema,
				hall_contents : hall_contents,
				hall_link : hall_link,
				hall_area : hall_area
			}),
			success : function(result) {
				if (result == "SUCCESS") {
					alert("처리 완료");
					location.href = '/management/hall/';
				}
			}
		});
	});
</script>
<%@include file="../../include/footer.jsp"%>