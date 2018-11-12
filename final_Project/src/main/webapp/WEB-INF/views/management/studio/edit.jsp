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
					<form id="editStudio" method="post">
						<input type="hidden" id="studio_hno" name="studio_hno" class="form-control" value="${editStudio.studio_hno}" />
						<div class="form-group has-feedback">
							<label>스튜디오이름</label>
							<input type="text" id="studio_name" name="studio_name" class="form-control" value="${editStudio.studio_name}" />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오위치</label>
							<select id="studio_location" name="studio_location" class="form-control" required>
							    <option value="부산 진구" <c:if test="${editStudio.studio_location eq '부산 진구'}">selected</c:if>>부산 진구</option>
							    <option value="부산 동구" <c:if test="${editStudio.studio_location eq '부산 동구'}">selected</c:if>>부산 동구</option>
							    <option value="부산 연제구" <c:if test="${editStudio.studio_location eq '부산 연제구'}">selected</c:if>>부산 연제구</option>
							    <option value="부산 해운대구" <c:if test="${editStudio.studio_location eq '부산 해운대구'}">selected</c:if>>부산 해운대구</option>
							    <option value="부산 동래구" <c:if test="${editStudio.studio_location eq '부산 동래구'}">selected</c:if>>부산 동래구</option>
							    <option value="부산 중구" <c:if test="${editStudio.studio_location eq '부산 중구'}">selected</c:if>>부산 중구</option>
							</select>
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오수용인원</label>
							<input type="text" id="studio_person" name="studio_person" class="form-control" value="${editStudio.studio_person}" />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오가격</label>
							<input type="text" id="studio_price" name="studio_price" class="form-control" value="${editStudio.studio_price}" />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오테마</label>
							<input type="text" id="studio_thema" name="studio_thema" class="form-control" value="${editStudio.studio_thema}" />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오컨텐츠</label>
							<input type="text" id="studio_contents" name="studio_contents" class="form-control" value="${editStudio.studio_contents}" />
						</div>
						<div class="form-group has-feedback">
							<label>페이지 전환을 위한 링크</label>
							<select id="studio_link" name="studio_link" class="form-control" required>
							    <option value="detail1" <c:if test="${editStudio.studio_link eq 'detail1'}">selected</c:if>>detail1</option>
							    <option value="detail2" <c:if test="${editStudio.studio_link eq 'detail2'}">selected</c:if>>detail2</option>
							    <option value="detail3" <c:if test="${editStudio.studio_link eq 'detail3'}">selected</c:if>>detail3</option>
							    <option value="detail4" <c:if test="${editStudio.studio_link eq 'detail4'}">selected</c:if>>detail4</option>
							    <option value="detail5" <c:if test="${editStudio.studio_link eq 'detail5'}">selected</c:if>>detail5</option>
							    <option value="detail6" <c:if test="${editStudio.studio_link eq 'detail6'}">selected</c:if>>detail6</option>
							</select>
						</div>
						<div class="form-group has-feedback">
							<label>지역</label>
							<select id="studio_area" name="studio_area" class="form-control" required>
							    <option value="1" <c:if test="${editStudio.studio_area eq 1}">selected</c:if>>부산 진구</option>
							    <option value="2" <c:if test="${editStudio.studio_area eq 2}">selected</c:if>>부산 동구</option>
							    <option value="3" <c:if test="${editStudio.studio_area eq 3}">selected</c:if>>부산 연제구</option>
							    <option value="4" <c:if test="${editStudio.studio_area eq 4}">selected</c:if>>부산 해운대구</option>
							    <option value="5" <c:if test="${editStudio.studio_area eq 5}">selected</c:if>>부산 동래구</option>
							    <option value="6" <c:if test="${editStudio.studio_area eq 6}">selected</c:if>>부산 중구</option>
							</select>
						</div>
						<div class="form-group">
							<label>FILE DROP HERE</label>
							<div class="fileDrop"></div>
						</div>
						<div class="box-footer">
							<div><hr/></div>
							<ul class="mailbox-attachments clearfix uploadedList"></ul>
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
<script id="template" type="text/x-handlebars-template">
	<li>
		<span class="mailbox-attachment-icon has-img">
			<img src="{{imgsrc}}" alt="attachment" />
		</span>
		<div class="mailbox-attachment-info">
			<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
			<a href="{{fullName}}" class="btn btn-default btn-xs pull-right delBtn">
				<i class="fa fa-fw fa-remove"></i>
			</a>
		</div>
	</li>
</script>
<script type="text/javascript">
	var message = '${result}';

	if (message != null && message == 'SUCCESS') { alert("정보수정에 성공하셨습니다."); }
	else if (message != null && message == 'FAIL') { alert("정보수정에 실패하셨습니다."); }

	var hno = ${editStudio.studio_hno};
	var studio_area = ${editStudio.studio_area};
	var studio_link = '${editStudio.studio_link}';
	
	var template = Handlebars.compile($("#template").html());

	$.getJSON("/management/getAttachStudioImg/"+ hno + "/" + studio_area + "/" + studio_link, function(list) {
		$(list).each(function() {
			var fileInfo = getFileInfo(this);
			var html = template(fileInfo);
			$(".uploadedList").append(html);
		});
	});

	$(".fileDrop").on("dragover dragenter", function(event) { event.preventDefault(); } );

	$(".fileDrop").on("drop", function(event) {
		event.preventDefault();
		
		var files = event.originalEvent.dataTransfer.files;

		var file = files[0];
		var formData = new FormData();
		formData.append("file", file);
		
		$.ajax({
			url : '/management/uploadStudioImg',
			data : formData,
			dataType : "text",
			processData : false,
			contentType : false,
			type : "POST",
			success : function(result) {
				alert(result);
				var fileInfo = getFileInfo(result);
				var html = template(fileInfo);
				console.log(html);
				$(".uploadedList").append(html);
			}
		});
	});
	
	$(".uploadedList").on("click", ".delBtn", function(event) {
		event.preventDefault();
		
		var fileLink = $(this).attr("href");
		var target = $(this);
		$.ajax({
			url : "/management/deleteStudioImg",
			type : "post",
			data : { fileName : fileLink },
			dataType : "text",
			success : function(result) { alert(result); target.closest("li").remove(); }
		});
	});
	
	
	$('#ok').click(function() {
		var str = '';
		var formObj = $("#editStudio");
		console.log(formObj);
		
		$(".uploadedList .delBtn").each(function(index){
			str += "<input type='hidden' id='files[" + index + "]' name='files[" + index + "]' value='" + $(this).attr("href") + "' />" 
		});
		
		formObj.append(str);
		formObj.attr('action', '/management/studio/editSubmit');
		formObj.submit();
	});
</script>
<%@include file="../../include/footer.jsp"%>