<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp"%>
<section class="content">
	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-6">
			<div class="box">
				<div class="box-header with-border">
					<h3>관리자 페이지(웨딩 스튜디오 관리)</h3>
					<button id="btnAddstudio">스튜디오 추가하러 가기</button>
				</div>
				<div class="box-body">
					<form id="info" method="post">
						<input type="hidden" id="studio_hno" name="studio_hno"/>
					</form>
					<table class="table table-bordered">
						<tr>
							<th>스튜디오 이름</th>
							<th>스튜디오 위치</th>
							<th>스튜디오 수용인원</th>
							<th>스튜디오 가격</th>
							<th>스튜디오 태마</th>
							<th>스튜디오 콘텐츠</th>
							<th>페이지 전환을 위한 링크</th>
							<th>지역</th>
							<th>주소</th>
							<th colspan="2">기타</th>
						</tr>
						<c:forEach var="list" items="${studioList}">
							<tr>
								<td>${list.studio_name}</td>
								<td>${list.studio_location}</td>
								<td>${list.studio_person}</td>
								<td>${list.studio_price}</td>
								<td>${list.studio_thema}</td>
								<td>${list.studio_contents}</td>
								<td>${list.studio_link}</td>
								<td>${list.studio_area}</td>
								<td>${list.studio_address}</td>
								<td>
									<input type="button" onclick="javascript:studioEdit('${list.studio_hno}')" class="btn btn-primary" value="정보수정 하기" />
									<input type="button" onclick="javascript:studioDelete('${list.studio_hno}')" class="btn btn-primary" value="정보삭제 하기" />
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
	
	$('#btnAddstudio').click(function() {
		location.href = "/management/studio/add";
	});
	
	function studioEdit(studio_hno) {
		$('#studio_hno').val(studio_hno);
		formObj.attr('action', '/management/studio/edit');
		formObj.submit();
	}
	
	function studioDelete(studio_hno) {
		$('#studio_hno').val(studio_hno);
		formObj.attr('action', '/management/studio/delete');
		formObj.submit();
	}
</script>
<%@include file="./include/footer.jsp"%>