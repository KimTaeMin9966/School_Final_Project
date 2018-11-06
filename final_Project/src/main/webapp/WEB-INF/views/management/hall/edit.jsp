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
							<select id="hall_location" name="hall_location" class="form-control" required>
							    <option value="부산 진구" <c:if test="${editHall.hall_location eq '부산 진구'}">selected</c:if>>부산 진구</option>
							    <option value="부산 동구" <c:if test="${editHall.hall_location eq '부산 동구'}">selected</c:if>>부산 동구</option>
							    <option value="부산 연제구" <c:if test="${editHall.hall_location eq '부산 연제구'}">selected</c:if>>부산 연제구</option>
							    <option value="부산 해운대구" <c:if test="${editHall.hall_location eq '부산 해운대구'}">selected</c:if>>부산 해운대구</option>
							    <option value="부산 동래구" <c:if test="${editHall.hall_location eq '부산 동래구'}">selected</c:if>>부산 동래구</option>
							    <option value="부산 중구" <c:if test="${editHall.hall_location eq '부산 중구'}">selected</c:if>>부산 중구</option>
							</select>
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
							<select id="hall_link" name="hall_link" class="form-control" required>
							    <option value="detail1" <c:if test="${editHall.hall_link eq 'detail1'}">selected</c:if>>detail1</option>
							    <option value="detail2" <c:if test="${editHall.hall_link eq 'detail2'}">selected</c:if>>detail2</option>
							    <option value="detail3" <c:if test="${editHall.hall_link eq 'detail3'}">selected</c:if>>detail3</option>
							    <option value="detail4" <c:if test="${editHall.hall_link eq 'detail4'}">selected</c:if>>detail4</option>
							    <option value="detail5" <c:if test="${editHall.hall_link eq 'detail5'}">selected</c:if>>detail5</option>
							    <option value="detail6" <c:if test="${editHall.hall_link eq 'detail6'}">selected</c:if>>detail6</option>
							</select>
						</div>
						<div class="form-group has-feedback">
							<label>지역</label>
							<select id="hall_area" name="hall_area" class="form-control" required>
							    <option value="1" <c:if test="${editHall.hall_area eq 1}">selected</c:if>>부산 진구</option>
							    <option value="2" <c:if test="${editHall.hall_area eq 2}">selected</c:if>>부산 동구</option>
							    <option value="3" <c:if test="${editHall.hall_area eq 3}">selected</c:if>>부산 연제구</option>
							    <option value="4" <c:if test="${editHall.hall_area eq 4}">selected</c:if>>부산 해운대구</option>
							    <option value="5" <c:if test="${editHall.hall_area eq 5}">selected</c:if>>부산 동래구</option>
							    <option value="6" <c:if test="${editHall.hall_area eq 6}">selected</c:if>>부산 중구</option>
							</select>
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
		var hall_location = $('#hall_location > option:selected').val();
		var hall_person = $('#hall_person').val();
		var hall_price = $('#hall_price').val();
		var hall_thema = $('#hall_thema').val();
		var hall_contents = $('#hall_contents').val();
		var hall_link = $('#hall_link > option:selected').val();
		var hall_area = $('#hall_area > option:selected').val();
		
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