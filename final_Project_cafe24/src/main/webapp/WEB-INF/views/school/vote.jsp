<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp"%>
<section class="section3">
	<div class="container withpadding">
		<div class="message">
			<div class="col-lg-9 col-md-9 col-sm-9">
				<h3>Grab the attention of your customers!</h3>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s..</p>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-12">
				<a class="dmbutton button large pull-right" href="#"><i class="fa fa-download"></i> GET A QUOTE</a>
			</div>
		</div>
	</div>
</section>

<section class="section2">
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