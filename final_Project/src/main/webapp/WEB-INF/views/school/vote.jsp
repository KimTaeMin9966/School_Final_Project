<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp"%>
<section class="section3">
	<div class="container withpadding">
		<div class="message">
			<div class="col-lg-9 col-md-9 col-sm-9">
				<h3>Grab the attention of your customers!</h3>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry. Lorem Ipsum has been the industry"s standard
					dummy text ever since..</p>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-12">
				<a class="dmbutton button large pull-right" href="#"><i class="fa fa-download"></i> GET A QUOTE</a>
			</div>
		</div>
	</div>
</section>

<section class="section2">
	<c:choose>
		<c:when test="${!empty votes}">
			<c:forEach var="vote" items="${votes}">
				<div class="container">
					<div class="message text-center">
						<h2 class="big-title">
							Your <span>portfolio</span> should standout!
						</h2>
						<p class="small-title">Lorem Ipsum is simply dummy text of the printing and typesetting industy has been the industry"s standard.</p>
						<a class="button large" href="#">ABOUT OUR SERVICES</a>
						<a class=" dmbutton large" href="#">CONTACT US TODAY</a>
					</div>
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class="container">
				<div class="message text-center">
					<h2 class="big-title">
						현재 <span>전교회장 선거 </span> 내용이 없습니다
					</h2>
					<p class="small-title">현재 진행중인 선거가 없습니다</p>
					<!-- <a class="button large" href="#">투표하러가기</a>
					<a class=" dmbutton large" href="#">결과확인</a> -->
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</section>
<section class="section1">
	<div class="container">
		<c:choose>
			<c:when test="${!empty votes_history}">
				<c:forEach var="vote_history" items="${votes_history}">
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="servicebox text-center">
							<div class="service-icon">
								<div class="dm-icon-effect-1" data-effect="slide-top">
									<a href="#" class="" title="클릭시 당회차 득표율을 볼수 있습니다."><i class="active dm-icon fa fa-book fa-3x"></i></a>
								</div>
								<div class="servicetitle">
									<h4>Responsive Layout</h4>
									<hr>
								</div>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry"s standard
									dummy text ever since..</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="servicebox text-center">
						<div class="service-icon">
							<div class="dm-icon-effect-1" data-effect="slide-top">
								<a href="#" class="" title="클릭시 당회차 득표율을 볼수 있습니다."><i class="active dm-icon fa fa-book fa-3x"></i></a>
							</div>
							<div class="servicetitle">
								<h4>선거기록이 없습니다</h4>
								<hr>
							</div>
							<p>선거기간이 지난후 당선이된 친구의 이름과 공약이 표시됩니다</p>
						</div>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</section>

<div class=" text-center">
	 <ul class="pagination">
		<c:if test="${pageMaker.prev}">
			<li><a href="vote${pageMaker.makeQuery(pageMaker.startPage - 1)}">&laquo;</a></li>
		</c:if>
		<c:forEach var="i" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			<li <c:out value="${pageMaker.cri.page == i ?'class=active':''}"/>><a href="vote${pageMaker.makeQuery(i)}">${i}</a></li>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<li><a href="vote${pageMaker.makeQuery(pageMaker.endPage + 1)}">&raquo;</a></li>
		</c:if>
	 </ul>
</div>
<%@include file="./include/footer.jsp"%>