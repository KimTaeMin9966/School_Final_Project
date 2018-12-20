<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp"%>
<section class="section3">
	<c:choose>
		<c:when test="${!empty SchoolLogin}">
			<c:if test="${SchoolLogin.sNumber == 99999}">
				<div class="container withpadding">
					<div class="message">
						<div class="col-lg-9 col-md-9 col-sm-9">
							<h3>선거 만들기</h3>
							<p></p>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-12">
							<a class="dmbutton button large pull-right" href="/school/create?id=${SchoolLogin.sNumber}"><i class="fa fa-bars"></i> 선거 만들러 가기</a>
						</div>
					</div>
				</div>
			</c:if>
		</c:when>
	</c:choose>
</section>

<section id="content" class="section2">
	<c:choose>
		<c:when test="${!empty vote}">
			<c:forEach var="v" items="${vote}">
				<div class="container">
					<div class="message text-center">
						<h2 class="big-title">
							${v.vTitle}
						</h2>
						<p class="small-title"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${v.vStart}" /> ~ <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${v.vEnd}" /></p>
						<a class="button large" href="/school/start?vote=${v.vNo}">투표 하러가기</a>
						<a class=" dmbutton large" href="/school/search?vote=${v.vNo}">실시간 득표수</a>
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
									<a href="/school/history?h=${votes_history.vNo}" class="" title="클릭시 당회차 득표율을 볼수 있습니다."><i class="active dm-icon fa fa-book fa-3x"></i></a>
								</div>
								<div class="servicetitle">
									<h4>${vote_history.vTitle}</h4>
									<hr>
								</div>
								<p>당선인 : <%-- ${vote_history.vName} --%><br/>공약 : ${vote_history.vContent}</p>
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
			<li><a href="vote${pageMaker.makeQuery(pageMaker.startPage - 1)}#content">&laquo;</a></li>
		</c:if>
		<c:forEach var="i" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			<li <c:out value="${pageMaker.cri.page == i ?'class=active':''}"/>><a href="vote${pageMaker.makeQuery(i)}#content">${i}</a></li>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<li><a href="vote${pageMaker.makeQuery(pageMaker.endPage + 1)}#content">&raquo;</a></li>
		</c:if>
	 </ul>
</div>
<%@include file="./include/footer.jsp"%>