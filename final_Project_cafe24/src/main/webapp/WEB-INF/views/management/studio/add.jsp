<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header with-border">
					<h3>관리자 페이지(웨딩스튜디오 업체 추가)</h3>
				</div>
				<div class="box-body">
					<form id="addStudio" method="post">
						<div class="form-group has-feedback">
							<label>스튜디오이름</label>
							<input type="text" name="studio_name" class="form-control" placeholder="EX) 메리움 웨딩스튜디오" required />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오위치</label>
							<select name="studio_location" class="form-control" required>
							    <option value="부산 진구">부산 진구</option>
							    <option value="부산 동구">부산 동구</option>
							    <option value="부산 연제구">부산 연제구</option>
							    <option value="부산 해운대구">부산 해운대구</option>
							    <option value="부산 동래구">부산 동래구</option>
							    <option value="부산 중구">부산 중구</option>
							</select>
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오수용인원</label>
							<input type="text" name="studio_person" class="form-control" placeholder="EX) 150" required />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오가격</label>
							<input type="text" name="studio_price" class="form-control" placeholder="EX) 35000" required />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오테마</label>
							<input type="text" name="studio_thema" class="form-control" placeholder="EX) dark" required />
						</div>
						<div class="form-group has-feedback">
							<label>스튜디오컨텐츠</label>
							<input type="text" name="studio_contents" class="form-control" placeholder="EX) 테이블형태" required />
						</div>
						<div class="form-group has-feedback">
							<label>페이지 전환을 위한 링크</label>
							<select name="studio_link" class="form-control" required>
								<optgroup label="area1">
								    <option value="/wedding/studio/area1/detail1">detail1</option>
								    <option value="/wedding/studio/area1/detail2">detail2</option>
								    <option value="/wedding/studio/area1/detail3">detail3</option>
								    <option value="/wedding/studio/area1/detail4">detail4</option>
								    <option value="/wedding/studio/area1/detail5">detail5</option>
								    <option value="/wedding/studio/area1/detail6">detail6</option>
								    <option value="/wedding/studio/area1/detail7">detail7</option>
								    <option value="/wedding/studio/area1/detail8">detail8</option>
								</optgroup>
								<optgroup label="area2">
								    <option value="/wedding/studio/area2/detail1">detail1</option>
								    <option value="/wedding/studio/area2/detail2">detail2</option>
								    <option value="/wedding/studio/area2/detail3">detail3</option>
								    <option value="/wedding/studio/area2/detail4">detail4</option>
								    <option value="/wedding/studio/area2/detail5">detail5</option>
								    <option value="/wedding/studio/area2/detail6">detail6</option>
								    <option value="/wedding/studio/area2/detail7">detail7</option>
								    <option value="/wedding/studio/area2/detail8">detail8</option>
								</optgroup>
								<optgroup label="area3">
								    <option value="/wedding/studio/area3/detail1">detail1</option>
								    <option value="/wedding/studio/area3/detail2">detail2</option>
								    <option value="/wedding/studio/area3/detail3">detail3</option>
								    <option value="/wedding/studio/area3/detail4">detail4</option>
								    <option value="/wedding/studio/area3/detail5">detail5</option>
								    <option value="/wedding/studio/area3/detail6">detail6</option>
								    <option value="/wedding/studio/area3/detail7">detail7</option>
								    <option value="/wedding/studio/area3/detail8">detail8</option>
								</optgroup>
								<optgroup label="area4">
								    <option value="/wedding/studio/area4/detail1">detail1</option>
								    <option value="/wedding/studio/area4/detail2">detail2</option>
								    <option value="/wedding/studio/area4/detail3">detail3</option>
								    <option value="/wedding/studio/area4/detail4">detail4</option>
								    <option value="/wedding/studio/area4/detail5">detail5</option>
								    <option value="/wedding/studio/area4/detail6">detail6</option>
								    <option value="/wedding/studio/area4/detail7">detail7</option>
								    <option value="/wedding/studio/area4/detail8">detail8</option>
								</optgroup>
								<optgroup label="area5">
								    <option value="/wedding/studio/area5/detail1">detail1</option>
								    <option value="/wedding/studio/area5/detail2">detail2</option>
								    <option value="/wedding/studio/area5/detail3">detail3</option>
								    <option value="/wedding/studio/area5/detail4">detail4</option>
								    <option value="/wedding/studio/area5/detail5">detail5</option>
								    <option value="/wedding/studio/area5/detail6">detail6</option>
								    <option value="/wedding/studio/area5/detail7">detail7</option>
								    <option value="/wedding/studio/area5/detail8">detail8</option>
								</optgroup>
								<optgroup label="area6">
								    <option value="/wedding/studio/area6/detail1">detail1</option>
								    <option value="/wedding/studio/area6/detail2">detail2</option>
								    <option value="/wedding/studio/area6/detail3">detail3</option>
								    <option value="/wedding/studio/area6/detail4">detail4</option>
								    <option value="/wedding/studio/area6/detail5">detail5</option>
								    <option value="/wedding/studio/area6/detail6">detail6</option>
								    <option value="/wedding/studio/area6/detail7">detail7</option>
								    <option value="/wedding/studio/area6/detail8">detail8</option>
								</optgroup>
								<optgroup label="area7">
								    <option value="/wedding/studio/area7/detail1">detail1</option>
								    <option value="/wedding/studio/area7/detail2">detail2</option>
								    <option value="/wedding/studio/area7/detail3">detail3</option>
								    <option value="/wedding/studio/area7/detail4">detail4</option>
								    <option value="/wedding/studio/area7/detail5">detail5</option>
								    <option value="/wedding/studio/area7/detail6">detail6</option>
								    <option value="/wedding/studio/area7/detail7">detail7</option>
								    <option value="/wedding/studio/area7/detail8">detail8</option>
								</optgroup>
								<optgroup label="area8">
								    <option value="/wedding/studio/area8/detail1">detail1</option>
								    <option value="/wedding/studio/area8/detail2">detail2</option>
								    <option value="/wedding/studio/area8/detail3">detail3</option>
								    <option value="/wedding/studio/area8/detail4">detail4</option>
								    <option value="/wedding/studio/area8/detail5">detail5</option>
								    <option value="/wedding/studio/area8/detail6">detail6</option>
								    <option value="/wedding/studio/area8/detail7">detail7</option>
								    <option value="/wedding/studio/area8/detail8">detail8</option>
								</optgroup>
							</select>
						</div>
						<div class="form-group has-feedback">
							<label>지역</label>
							<select name="studio_area" class="form-control" required>
							    <option value="1">부산 진구</option>
							    <option value="2">부산 동구</option>
							    <option value="3">부산 연제구</option>
							    <option value="4">부산 해운대구</option>
							    <option value="5">부산 동래구</option>
							    <option value="6">부산 중구</option>
							</select>
						</div>
						<div class="form-group has-feedback">
							<label>주소</label>
							<input type="text" name="studio_address" class="form-control" placeholder="EX) 테이블형태" required />
						</div>
						<div class="form-group">
							<label>FILE DROP HERE</label>
							<div class="fileDrop"></div>
						</div>
						<div class="box-footer">
							<div><hr/></div>
							<ul class="mailbox-attachments clearfix uploadedList"></ul>
							<div class="col-xs-4">
								<input type="submit" class="btn btn-primary btn-block btn-flat" value="스튜디오추가" />
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
	var template = Handlebars.compile($("#template").html());
	
	$(".fileDrop").on("dragover dragenter", function(event) { event.preventDefault(); });
	
	$(".fileDrop").on("drop",function(event) {
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
	
	$("#addStudio").submit(function(event) {
		event.preventDefault();
		var target = $(this);
		
		var str = "";
		
		$(".uploadedList .delBtn").each(function(index) {
			str += "<input type='hidden' id='files[" + index + "]' name='files[" + index + "]' value='" + $(this).attr("href") + "' />";
		});
		
		target.append(str);
		target.get(0).submit();
	});
	
	
	$(".uploadedList").on("click", ".delBtn", function() {
		event.preventDefault();
		
		var target = $(this);
		$.ajax({
			url : "/management/deleteStudioImg",
			type : "post",
			data : { fileName : target.attr("href") },
			dataType : "text",
			success : function(result) {
				if(result == "deleted") { target.closest("li").remove(); }
			}
		});
	});
</script>
<%@include file="../include/footer.jsp"%>