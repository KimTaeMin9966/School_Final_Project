<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header with-border">
					<h3>관리자 페이지(맴버 관리)</h3>
				</div>
				<div class="box-body">
					<form id="info" method="post">
						<input type="hidden" id="mwid" name="mwid"/>
					</form>
					<table class="table table-bordered">
						<tr>
							<th>USER ID</th>
							<th>USER NAME</th>
							<th colspan="2">기타</th>
						</tr>
						<c:forEach var="member" items="${memberInfos}">
							<tr>
								<td>${member.mwid}</td>
								<td>${member.mwname}</td>
								<td>
									<input type="button" onclick="javascript:infoView('${member.mwid}')" class="btn btn-primary" value="정보 보기" />
									<input type="button" onclick="javascript:infoEdit('${member.mwid}')" class="btn btn-primary" value="정보수정 하기" />
									<input type="button" onclick="javascript:infoDelete('${member.mwid}')" class="btn btn-primary" value="정보삭제 하기" />
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

	/* $("#infoViewButton").click(function() {
		formObj.attr('action', '/member/infoView');
		formObj.submit();
	});

	$("#infoEditButton").click(function() {
		formObj.attr('action', '/member/infoEdit');
		formObj.submit();
	});

	$("#infoDeleteButton").click(function() {
		formObj.attr('action', '/member/infoDelete');
		formObj.submit();
	}); */
	
	function infoView(mwid) {
		$('#mwid').val(mwid);
		formObj.attr('action', '/member/infoView');
		formObj.submit();
	}
	
	function infoEdit(mwid) {
		$('#mwid').val(mwid);
		formObj.attr('action', '/member/infoEdit');
		formObj.submit();
	}
	
	function infoDelete(mwid) {
		$('#mwid').val(mwid);
		formObj.attr('action', '/member/infoDelete');
		formObj.submit();
	}
</script>
<%@include file="../include/footer.jsp"%>