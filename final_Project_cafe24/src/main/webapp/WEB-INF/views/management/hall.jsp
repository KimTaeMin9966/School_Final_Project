<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp"%>
<section class="content">
	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-6">
			<div class="box">
				<div class="box-header with-border">
					<h3>관리자 페이지(웨딩홀 관리)</h3>
					<button id="btnAddHall">홀 추가하러 가기</button>
				</div>
				<div class="box-body">
					<form id="info" method="post">
						<input type="hidden" id="hall_hno" name="hall_hno" />
					</form>
					<table class="table table-bordered">
						<tr>
							<th>홀 이름</th>
							<th>홀 위치</th>
							<th>홀 수용인원</th>
							<th>홀 가격</th>
							<th>홀 태마</th>
							<th>홀 콘텐츠</th>
							<th>페이지 전환을 위한 링크</th>
							<th>지역</th>
							<th>주소</th>
							<th colspan="2">기타</th>
						</tr>
						<c:forEach var="list" items="${hallList}">
							<tr>
								<td>${list.hall_name}</td>
								<td>${list.hall_location}</td>
								<td>${list.hall_person}</td>
								<td>${list.hall_price}</td>
								<td>${list.hall_thema}</td>
								<td>${list.hall_contents}</td>
								<td>${list.hall_link}</td>
								<td>${list.hall_area}</td>
								<td>${list.hall_address}</td>
								<td>
									<input type="button" onclick="javascript:hallEdit('${list.hall_hno}')" class="btn btn-primary" value="정보수정 하기" />
									<input type="button" onclick="javascript:hallDelete('${list.hall_hno}')" class="btn btn-primary" value="정보삭제 하기" />
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	var message = '${result}';
	
	if (message != null && message == 'SUCCESS') { alert("작업이 성공하셨습니다."); }
	else if (message != null && message == 'FAIL') { alert("작업이 실패하셨습니다."); }
	
	var formObj = $("#info");
	console.log(formObj);
	
	$('#btnAddHall').click(function() {
		location.href = "/management/hall/add";
	});
	
	function hallEdit(hall_hno) {
		$('#hall_hno').val(hall_hno);
		formObj.attr('action', '/management/hall/edit');
		formObj.submit();
	}
	
	function hallDelete(hall_hno) {
		$('#hall_hno').val(hall_hno);
		formObj.attr('action', '/management/hall/delete');
		formObj.submit();
	}
</script>
<%@include file="./include/footer.jsp"%>