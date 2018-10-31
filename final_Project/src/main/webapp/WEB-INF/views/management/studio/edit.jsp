<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../include/header.jsp"%>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header with-border">
					<h3>관리자 페이지(웨딩스튜디오 업체 수정)</h3>
				</div>
				<div class="box-body">
					<form method="post">
						<input type="text" id="studio_hno" name="studio_hno" class="form-control" value="${editStudio.studio_hno}" />
						<div class="form-group has-feedback">
							<label>스튜디오이름</label>
							<input type="text" id="studio_name" name="studio_name" class="form-control" value="${editStudio.studio_name}" />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오위치</label>
							<input type="text" id="studio_location" name="studio_location" class="form-control" value="${editStudio.studio_name}" readonly />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오수용인원</label>
							<input type="text" id="studio_person" name="studio_person" class="form-control" value="${editStudio.studio_name}" />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오가격</label>
							<input type="text" id="studio_price" name="studio_price" class="form-control" value="${editStudio.studio_name}" />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오테마</label>
							<input type="text" id="studio_thema" name="studio_thema" class="form-control" value="${editStudio.studio_name}" />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오컨텐츠</label>
							<input type="text" id="studio_contents" name="studio_contents" class="form-control" value="${editStudio.studio_name}" />
						</div>
						<div class="form-group has-feedback">
							<label>페이지 전환을 위한 링크</label>
							<input type="text" id="studio_link" name="studio_link" class="form-control" value="${editStudio.studio_name}" readonly />
						</div>
						<div class="form-group has-feedback">
							<label>지역</label>
							<input type="text" id="studio_area" name="studio_area" class="form-control" value="${editStudio.studio_name}" readonly />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<input type="button" id="ok" class="btn btn-primary btn-block btn-flat" value="스튜디오수정" />
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
		var studio_hno = $('#studio_hno').val();
		var studio_name = $('#studio_name').val();
		var studio_location = $('#studio_location').val();
		var studio_person = $('#studio_person').val();
		var studio_price = $('#studio_price').val();
		var studio_thema = $('#studio_thema').val();
		var studio_contents = $('#studio_contents').val();
		var studio_link = $('#studio_link').val();
		var studio_area = $('#studio_area').val();
		
		$.ajax({
			type : 'PATCH',
			url : '/management/studio/edit',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "PATCH"
			},
			dataType : "text",
			data : JSON.stringify({
				studio_hno : studio_hno,
				studio_name : studio_name,
				studio_location : studio_location,
				studio_person : studio_person,
				studio_price : studio_price,
				studio_thema : studio_thema,
				studio_contents : studio_contents,
				studio_link : studio_link,
				studio_area : studio_area
			}),
			success : function(result) {
				if (result == "SUCCESS") {
					alert("처리 완료");
					location.href = '/management/studio/';
				}
			}
		});
	});
</script>
<%@include file="../../include/footer.jsp"%>