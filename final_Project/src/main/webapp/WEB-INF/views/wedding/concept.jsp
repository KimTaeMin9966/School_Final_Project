<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/concept.css?ver=20181114008">
<div class="content">
	<div class="row">
		<div class="col twelve text-center">
			<h1>컨셉으로 찾기</h1>
		</div>
	</div>
	<div class="row">
		<div class="col three">
			<a href="/wedding/conceptSearch?c=classic" class="btn btn-sunflower">Classic</a>
		</div>
		<div class="col three">
			<a href="/wedding/conceptSearch?c=romantic" class="btn btn-dark-blue">Romantic</a>
		</div>
		<div class="col three">
			<a href="/wedding/conceptSearch?c=vintage" class="btn btn-rouge">Vintage</a>
		</div>
		<div class="col three">
			<a href="/wedding/conceptSearch?c=unique" class="btn btn-dark">Unique</a>
		</div>
	</div>
	<div class="row">
		<div class="col three">
			<a href="/wedding/conceptSearch?c=dark" class="btn btn-orange">Dark</a>
		</div>
		<div class="col three"></div>
		<div class="col three"></div>
		<div class="col three">
			<a href="/wedding/conceptSearch?c=shiny" class="btn btn-concrete">Shiny</a>
		</div>
	</div>
</div>

<div class="content search-result new-4-cols-layout">
	<div class="product-tiles-grid">
		<c:choose>
			<c:when test="${!empty concept}">
				<c:forEach var="lists" items="${concept}">
					<article class="product-tiles-grid-item product-tiles-grid-item-medium product-tiles-grid-item-small hover-link  border-right">
						<a class="product-tiles-grid-item-link" href="${lists.hall_link}">
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
								<font style="vertical-align: inherit;">해당 컨셉은 존재 하지 않습니다.</font>
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