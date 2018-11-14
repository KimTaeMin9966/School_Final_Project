<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/money.css?ver=20181114001">
<div class="content">
	<form id="searchFrom" method="post" action="">
		<table class="table">
			<tr>
				<td><label id="textmoney">가격검색</label></td>
				<td><input type="text" id="moneyvaluemin" name="moneyvaluemin"></td>
				<td><label id="textmoney">~</label></td>
				<td><input type="text" id="moneyvaluemax" name="moneyvaluemax"></td>
				<td><button type="button" id="search" class="button">확&nbsp;인</button></td>
			</tr>
		</table>
	</form>
</div>
<script type="text/javascript">
	var fromObj = $('#searchFrom');
	console.log(fromObj);
	
	$('#search').on('click', function() {
		var min = $('#moneyvaluemin').val();
		var max = $('#moneyvaluemax').val();
		
		if (min == null || min == '') { alert('최저 가격을  입력 해주세요.'); $('#moneyvaluemin').focus(); }
		else if (max == null || max == '') { alert('최고 가격을  입력 해주세요.'); $('#moneyvaluemax').focus(); }
		else {
			fromObj.attr('action', '/wedding/moneySearch');
			fromObj.submit();
		}
	});
</script>
<div class="content search-result new-4-cols-layout">
	<div class="product-tiles-grid">
		<c:choose>
			<c:when test="${money != null}">
				<c:forEach var="lists" items="${money}">
					<article class="product-tiles-grid-item product-tiles-grid-item-medium product-tiles-grid-item-small hover-link  border-right">
						<a class="product-tiles-grid-item-link" href="/wedding/hall/area1/${lists.hall_link}">
							<div class="product-tiles-grid-item-image-wrapper">
								<div class="product-tiles-grid-item-image ">
									<img alt="이미지입니다." style="width: 100%; height: 595px;"
										src="/management/displayFile?fileName=${lists.fullName}">
								</div>
							</div>
							<p class="online-exclusive-badge text-left" data-component-attr-id="online-exclusive">
								<font style="vertical-align: inherit;">
									<font style="vertical-align: inherit;">홀 주소 : ${lists.hall_location}</font><br/>
									<font style="vertical-align: inherit;">홀 수용인원 ${lists.hall_person} 명</font><br/>
									<font style="vertical-align: inherit;">${lists.hall_price}</font><br/>
									<font style="vertical-align: inherit;">${lists.hall_thema}</font><br/>
									<font style="vertical-align: inherit;">${lists.hall_contents}</font><br/>
									<font style="vertical-align: inherit;">${lists.hall_address}</font><br/>
								</font>
							</p>
						</a>
						<button type="button" class="favorite" title="Save for later">
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">나중에 저장</font>
							</font>
						</button>
					</article>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<article class="product-tiles-grid-item product-tiles-grid-item-medium product-tiles-grid-item-small hover-link  border-right">
					<a class="product-tiles-grid-item-link" href="#">
						<div class="product-tiles-grid-item-image-wrapper">
							<div class="product-tiles-grid-item-image ">
								
							</div>
						</div>
						<p class="online-exclusive-badge text-left" data-component-attr-id="online-exclusive">
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">해당 금액대는 존재 하지 않습니다.</font>
							</font>
						</p>
					</a>
					<button type="button" class="favorite" title="Save for later">
						<font style="vertical-align: inherit;">
							<font style="vertical-align: inherit;">나중에 저장</font>
						</font>
					</button>
				</article>
			</c:otherwise>
		</c:choose>
	</div>
</div>
<%@include file="../include/footer.jsp"%>

